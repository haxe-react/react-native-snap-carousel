package react.native.snapcarousel;

import react.ReactComponent;
import haxe.Constraints;
import react.native.component.props.FlatListProps;
import react.native.component.props.ViewStyle;
import react.native.component.props.AnimatedViewStyle;

@:enum
abstract AnimationType(String){
    var Decay = 'decay';
    var Spring = 'spring';
    var Timing = 'timing';
}

@:enum
abstract SlideAlignment(String){
    var Start = 'start';
    var Center = 'center';
    var End = 'end';
}

@:enum
abstract Layout(String){
    var Default = 'default';
    var Stack = 'stack';
    var Tinder = 'tinder';
}

typedef CarouselProps<T> = {
    > FlatListProps<T>,
    // data:Array<T>,
    // renderItem:{item:T, index:Int}->ReactFragment,
    ?itemWidth:Float,
    ?sliderWidth:Float,
    ?itemHeight:Float,
    ?sliderHeight:Float,
    ?activeSlideOffset:Int,
    ?pparitionDelay:Int,
    ?callbackOffsetMargin:Int,
    ?enableMomentum:Bool,
    ?enableSnap:Bool,
    ?firstItem:Int,
    ?hasParallaxImages:Bool,
    ?lockScrollTimeoutDuration:Int,
    ?lockScrollWhileSnapping:Bool,
    ?shouldOptimizeUpdates:Bool,
    ?swipeThreshold:Int,
    ?useScrollView:Bool,
    ?vertical:Bool,
    ?loop:Bool,
    ?loopClonesPerSide:Int,
    ?autoplay:Bool,
    ?autoplayDelay:Int,
    ?autoplayInterval:Int,
    ?activeAnimationOptions:Dynamic,
    ?activeAnimationType:AnimationType,
    ?activeSlideAlignment:SlideAlignment,
    ?containerCustomStyle:ViewStyle,
    ?contentContainerCustomStyle:ViewStyle,
    ?inactiveSlideOpacity:Float,
    ?inactiveSlideScale:Float,
    ?inactiveSlideShift:Int,
    ?layout:Layout,
    ?layoutCardOffset:Int,
    ?scrollInterpolator:Void->Void,
    ?slideInterpolatedStyle:Void->Void,
    ?slideStyle:AnimatedViewStyle,
    ?onLayout:Function,
    ?onScroll:Function,
    ?onBeforeSnapToItem:Int->Void,
    ?onSnapToItem:Int->Void,
}

@:jsRequire('react-native-snap-carousel','default')
extern class Carousel<T> extends ReactComponentOfProps<CarouselProps<T>> {
    var currentIndex:Int;
    var currentScrollPosition:Int;
    function startAutoplay(?instantly:Bool):Void;
    function stopAutoplay():Void;
    function snapToItem(index:Int, ?animate:Bool, ?fireCallback:Bool):Void;
    function snapToPrev(?animate:Bool, ?fireCallback:Bool):Void;
    function snapToNext(?animate:Bool, ?fireCallback:Bool):Void;
    function triggerRenderingHack(?offset:Int):Void;
}
