import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';


import 'package:sample_app/models/article.dart';
import 'package:sample_app/screen/parts/app_bar/header.dart';
import 'package:sample_app/screen/parts/body/article_tile.dart';
import 'package:sample_app/view_models/result_page_provider.dart';

class Result extends HookWidget {

  @override
  Widget build(BuildContext context)
  {
    final _controller = useProvider(resultPageProvider.notifier);
    final _pagingController = _controller.pagingController;

    useEffect(() {
      _pagingController
      .addPageRequestListener((pageKey) async => _controller.search());
      return _pagingController.dispose;
    }, []);

    return Scaffold(
      appBar: Header('検索結果'),
      body: PagedListView.separated(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<ArticleData>(
          itemBuilder: (context, item, index) => ArticleTile(item)
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 18,
        )
      ),
    );
  }
}