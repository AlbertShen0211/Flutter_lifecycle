import 'package:flutter/material.dart';
import 'package:two_you_friend/logutil.dart';
import 'package:two_you_friend/pages/sub_stateful_widget.dart';

/// 创建有状态测试组件
class TestStatefulWidget extends StatefulWidget {
  @override
  createState() {
    LogUtil.e("createState");
    return TestState();
  }
}

/// 创建状态管理类，继承状态测试组件
class TestState extends State<TestStatefulWidget> {
  /// 定义 state [count] 计算器
  int count;

  /// 定义 state [name] 为当前描述字符串
  String name;

  @override
  initState() {
    LogUtil.e('init state');
    super.initState();
    setState(() {
      count = 1;
      name = 'test';
    });
  }

  @override
  didChangeDependencies() {
    LogUtil.e('did change dependencies');
    super.didChangeDependencies();
  }

  @override
  didUpdateWidget(TestStatefulWidget oldWidget) {
    count++;
    LogUtil.e('did update widget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  deactivate() {
    LogUtil.e('deactivate');
    super.deactivate();
  }

  @override
  dispose() {
    LogUtil.e('dispose');
    super.dispose();
  }

  @override
  reassemble() {
    LogUtil.e('reassemble');
    super.reassemble();
  }

  /// 修改 state name
  void changeName() {
    setState(() {
      LogUtil.e('set state');
      this.name = 'flutter';
    });
  }

  @override
  Widget build(BuildContext context) {
    LogUtil.e('build');
    return Column(
      children: <Widget>[
        FlatButton(
          child: Text('$name $count'), // 使用 Text 组件显示描述字符和当前计算
          onPressed: () => this.changeName(), // 点击触发修改描述字符 state name
        ),
        //SubStatefulWidget()
      ],
    );
  }
}
