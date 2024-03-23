import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:giphy_example/network/models/data/gif_data.dart';
import 'package:giphy_example/network/services/giphy_service.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final GiphyService _giphyService = GiphyService();
  bool _error = false;
  bool _isLoading = false;
  bool _isLoadingMore = false;
  bool _hasMore = true;
  List<GifData> _data = [];
  CancelToken? _cancelToken;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  @override
  void setState(VoidCallback fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _error = false;
        _isLoading = false;
        _isLoadingMore = false;
        _hasMore = true;
        _data = [];
      });
      _fetchSearchedGifs();
    });
    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        if (_scrollController.offset >= _scrollController.position.maxScrollExtent - 10) {
          if (!_hasMore) return;
          if (_isLoadingMore) return;
          _fetchSearchedGifs();
        }
      }
    });
  }

  @override
  void dispose() {
    _cancelToken?.cancel();
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _fetchSearchedGifs() async {
    try {
      setState(() {
        if (_data.isEmpty) {
          _isLoading = true;
        }
        _isLoadingMore = true;
      });
      final response = await _giphyService.search(
        q: _searchController.text,
        offset: _data.length,
        cancelToken: _cancelToken,
      );
      setState(() {
        _data = [..._data, ...response.data];
        if (_data.length >= response.pagination.total_count) {
          _hasMore = false;
        }
        _isLoading = false;
        _isLoadingMore = false;
      });
    } catch (err) {
      setState(() {
        _error = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Gifs"),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: "Keywords",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      body: SizedBox.expand(child: _buildSearchingGifs()),
    );
  }

  Widget _buildSearchingGifs() {
    if (_error) {
      return const Center(
        child: Text("An error has occured while completing your request"),
      );
    }
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: GridView.builder(
            controller: _scrollController,
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) => Image.network(
              _data[index].images.original.url,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  decoration: const BoxDecoration(color: Colors.grey),
                );
              },
            ),
            itemCount: _data.length,
          ),
        ),
        if (_isLoadingMore)
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: CircularProgressIndicator()),
          ),
      ],
    );
  }
}
