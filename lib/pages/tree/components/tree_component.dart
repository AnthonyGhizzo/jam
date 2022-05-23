import 'package:flutter/material.dart';
import 'package:my_jam/pages/tree/components/server_data.dart';
import 'package:my_jam/pages/tree/tree_page.dart';
import 'package:flutter_tree/flutter_tree.dart';

class TreeComponent extends StatefulWidget {
  const TreeComponent({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _TreeComponentState();
  }
}

class _TreeComponentState extends State<TreeComponent> {
  Future<List<TreeNodeData>> _load(TreeNodeData parent) async {
    await Future.delayed(const Duration(seconds: 1));
    final data = [
      TreeNodeData(
        title: 'Load node 1',
        expaned: false,
        checked: true,
        children: [],
        extra: null,
      ),
      TreeNodeData(
        title: 'Load node 2',
        expaned: false,
        checked: false,
        children: [],
        extra: null,
      ),
    ];
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return TreeView(
      data: treeData,
      lazy: true,
      load: _load,
      showActions: true,
      showCheckBox: true,
      showFilter: true,
      append: (parent) {
        print(parent.extra);
        return TreeNodeData(
          title: 'Appended',
          expaned: true,
          checked: true,
          children: [],
        );
      },
      onLoad: (node) {
        print('onLoad');
        print(node);
      },
      onAppend: (node, parent) {
        print('onAppend');
        print(node);
      },
      onCheck: (checked, node) {
        print('checked');
        print('onCheck');
        print(node);
      },
      onCollapse: (node) {
        print('onCollapse');
        print(node);
      },
      onExpand: (node) {
        print('onExpand');
        print(node);
      },
      onRemove: (node, parent) {
        print('onRemove');
        print(node);
      },
      onTap: (node) {
        print('onTap');
        print(node);
      },
    );
  }
}
