import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:giphy_example/network/models/data/gif_data.dart';
import 'package:giphy_example/network/services/giphy_service.dart';
import 'package:giphy_example/presentation/screens/search.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback toggleTheme;

  const HomeScreen({
    required this.toggleTheme,
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GiphyService _giphyService = GiphyService();
  bool _error = false;
  bool _isLoading = true;
  bool _isLoadingMore = true;
  bool _hasMore = true;
  List<GifData> _data = [];
  CancelToken? _cancelToken;
  final ScrollController _scrollController = ScrollController();

  @override
  void setState(VoidCallback fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void initState() {
    super.initState();
    _fetchTrendingGifs();
    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        if (_scrollController.offset >= _scrollController.position.maxScrollExtent - 10) {
          if (!_hasMore) return;
          if (_isLoadingMore) return;
          _fetchTrendingGifs();
        }
      }
    });
  }

  @override
  void dispose() {
    _cancelToken?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _fetchTrendingGifs() async {
    try {
      setState(() {
        _isLoadingMore = true;
      });
      final response = await _giphyService.trending(
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
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: _onPressedSearch,
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: _onPressedToggleTheme,
            icon: const Icon(Icons.dark_mode),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Trending Gifs",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(child: _buildTrendingGifs()),
        ],
      ),
    );
  }

  Widget _buildTrendingGifs() {
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

  void _onPressedSearch() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SearchScreen(),
      ),
    );
  }

  void _onPressedToggleTheme() {
    widget.toggleTheme();
  }
}
