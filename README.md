# Flutter Custom Refresh Indicator

Create your own custom refresh indicator widget in the blink of an eye!

## Features

1. Create a COMPLETELY custom refresh indicator widget.

2. Quickly change the content of the material refresh indicator.

3. Trigger refresh indicator on horizontal lists (online example).

4. Trigger the refresh indicator from the leading, trailing, or both scroll edges.

## QUICK START

   ```
   CustomRefreshIndicator(
  /// Scrollable widget
  child: ListView.builder(
    itemBuilder: (BuildContext context, int index) => Text(index.toString()),
  ),
  /// The function that builds the indicator
  builder: (
    BuildContext context,
    Widget child,
    IndicatorController controller,
    ) {
      /// TODO: Implement your own refresh indicator
      return Stack(
        children: <Widget>[
          /// The scroll widget that was passed as the [child] argument.
          ///
          /// TIP:
          /// You can also wrap [child] with the [Transform] widget to also animate the list transformation (see the example app).
          child,

          /// Your indicator implementation
          return MyIndicator(value: controller.value, loading: controller.state.isLoading);
        ],
      );
    }
  /// A function that is called when the user drags the refresh indicator.
  onRefresh: myAsyncRefreshFunction,
)
   ```

### MaterialIndicatorDelegate

If you just want to replace the content of the material indicator, you can use MaterialIndicatorDelegate, which builds a material container. In addition to the built in RefreshIndicator it supports horizontal lists and triggering from both edges (see the trigger argument).

   ```
   CustomRefreshIndicator(
  /// delegate with configuration
  builder: MaterialIndicatorDelegate(
    builder: (context, controller) {
      return Icon(
        Icons.ac_unit,
        color: Colors.blue,
        size: 30,
      );
    },
  ),
  onRefresh: myAsyncRefreshFunction,
  child: scrollable,
)
   ```