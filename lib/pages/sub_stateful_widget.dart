import 'package:flutter/material.dart';

import '../logutil.dart';

/// 创建子组件类
class SubStatefulWidget extends StatefulWidget {
  @override
  createState() {
    LogUtil.e('sub create state');
    return SubState();
  }
}

class SubState extends State<SubStatefulWidget> {
  String name = 'sub test';

  @override
  Widget build(BuildContext context) {
    LogUtil.e('sub build');
    return Text('subname $name'); // 使用Text组件显示当前name state
  }

  @override
  void initState() {
    LogUtil.e('sub init state');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    LogUtil.e('sub did change dependencies');
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    LogUtil.e('sub dispose');
    super.dispose();
  }

  @override
  void deactivate() {
    LogUtil.e('sub deactivate');
    super.deactivate();
  }

  @override
  void setState(VoidCallback fn) {
    LogUtil.e('sub setState');
  }

  @override
  void reassemble() {
    LogUtil.e('sub reassemble');
    super.reassemble();
  }

  @override
  void didUpdateWidget(SubStatefulWidget oldWidget) {
    LogUtil.e('sub did update widget');
    super.didUpdateWidget(oldWidget);
  }
}
