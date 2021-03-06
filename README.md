1、flutter 如何使用Android logcat打印日志


2、组件 Widget
Flutter 中的组件与前端组件的理解和作用基本一致，但是没有一个明确的概念解释 Flutter 组件，这里我借用前端的组件定义来解释 Flutter 组件的概念。

一个 Flutter 组件，包含了组件的模板、样式和交互等内容，外部只要按照组件设定的属性、函数及事件处理等进行调用即可，完全不用考虑组件的内部实现逻辑。其中组件又包括无状态组件和有状态组件。

无状态组件

无状态组件，可以理解为将外部传入的数据转化为界面展示的内容，只会渲染一次。

有状态组件

有状态组件，是定义交互逻辑和业务数据，可以理解为具有动态可交互的内容界面，会根据数据的变化进行多次渲染。

生命周期
在原生 Android 、原生 iOS 、前端 React 或者 Vue 都存在生命周期的概念，在 Flutter 中一样存在生命周期的概念，其基本概念和作用相似。 Flutter 中说的生命周期，也是指有状态组件，对于无状态组件生命周期只有 build 这个过程，也只会渲染一次，而有状态组件则比较复杂，下面我们就来看看有状态组件的生命周期过程。

生命周期的流转
Flutter 中的生命周期，包含以下几个阶段：

createState ，该函数为 StatefulWidget 中创建 State 的方法，当 StatefulWidget 被调用时会立即执行 createState 。

initState ，该函数为 State 初始化调用，因此可以在此期间执行 State 各变量的初始赋值，同时也可以在此期间与服务端交互，获取服务端数据后调用 setState 来设置 State。

didChangeDependencies ，该函数是在该组件依赖的 State 发生变化时，这里说的 State 为全局 State ，例如语言或者主题等，类似于前端 Redux 存储的 State 。

build ，主要是返回需要渲染的 Widget ，由于 build 会被调用多次，因此在该函数中只能做返回 Widget 相关逻辑，避免因为执行多次导致状态异常。

reassemble ，主要是提供开发阶段使用，在 debug 模式下，每次热重载都会调用该函数，因此在 debug 阶段可以在此期间增加一些 debug 代码，来检查代码问题。

didUpdateWidget ，该函数主要是在组件重新构建，比如说热重载，父组件发生 build 的情况下，子组件该方法才会被调用，其次该方法调用之后一定会再调用本组件中的 build 方法。

deactivate ，在组件被移除节点后会被调用，如果该组件被移除节点，然后未被插入到其他节点时，则会继续调用 dispose 永久移除。

dispose ，永久移除组件，并释放组件资源。

