package com.android.systemui.shared.animation;

import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.shared.animation.UnfoldConstantTranslateAnimator;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.collections.r;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.h;
import kotlin.sequences.d;
import kotlin.sequences.j;
import m3.a;
import m3.l;
import m3.p;
import t1.InterfaceC1405d;
import t1.InterfaceC1406e;
/* loaded from: classes.dex */
public final class UnfoldConstantTranslateAnimator implements InterfaceC1405d {
    private final InterfaceC1406e progressProvider;
    private ViewGroup rootView;
    private float translationMax;
    private final Set viewsIdToTranslate;
    private List viewsToTranslate;

    /* loaded from: classes.dex */
    public enum Direction {
        START(-1.0f),
        END(1.0f);
        
        private final float multiplier;

        Direction(float f4) {
            this.multiplier = f4;
        }

        public final float getMultiplier() {
            return this.multiplier;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class ViewToTranslate {
        private final Direction direction;
        private final p translateFunc;
        private final WeakReference view;

        public ViewToTranslate(WeakReference view, Direction direction, p translateFunc) {
            h.e(view, "view");
            h.e(direction, "direction");
            h.e(translateFunc, "translateFunc");
            this.view = view;
            this.direction = direction;
            this.translateFunc = translateFunc;
        }

        public static /* synthetic */ ViewToTranslate copy$default(ViewToTranslate viewToTranslate, WeakReference weakReference, Direction direction, p pVar, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                weakReference = viewToTranslate.view;
            }
            if ((i4 & 2) != 0) {
                direction = viewToTranslate.direction;
            }
            if ((i4 & 4) != 0) {
                pVar = viewToTranslate.translateFunc;
            }
            return viewToTranslate.copy(weakReference, direction, pVar);
        }

        public final WeakReference component1() {
            return this.view;
        }

        public final Direction component2() {
            return this.direction;
        }

        public final p component3() {
            return this.translateFunc;
        }

        public final ViewToTranslate copy(WeakReference view, Direction direction, p translateFunc) {
            h.e(view, "view");
            h.e(direction, "direction");
            h.e(translateFunc, "translateFunc");
            return new ViewToTranslate(view, direction, translateFunc);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ViewToTranslate) {
                ViewToTranslate viewToTranslate = (ViewToTranslate) obj;
                return h.a(this.view, viewToTranslate.view) && this.direction == viewToTranslate.direction && h.a(this.translateFunc, viewToTranslate.translateFunc);
            }
            return false;
        }

        public final Direction getDirection() {
            return this.direction;
        }

        public final p getTranslateFunc() {
            return this.translateFunc;
        }

        public final WeakReference getView() {
            return this.view;
        }

        public int hashCode() {
            int hashCode = this.direction.hashCode();
            return this.translateFunc.hashCode() + ((hashCode + (this.view.hashCode() * 31)) * 31);
        }

        public String toString() {
            WeakReference weakReference = this.view;
            Direction direction = this.direction;
            p pVar = this.translateFunc;
            return "ViewToTranslate(view=" + weakReference + ", direction=" + direction + ", translateFunc=" + pVar + ")";
        }
    }

    public UnfoldConstantTranslateAnimator(Set viewsIdToTranslate, InterfaceC1406e progressProvider) {
        h.e(viewsIdToTranslate, "viewsIdToTranslate");
        h.e(progressProvider, "progressProvider");
        this.viewsIdToTranslate = viewsIdToTranslate;
        this.progressProvider = progressProvider;
        this.viewsToTranslate = EmptyList.f11226d;
    }

    private final void registerViewsForAnimation(final ViewGroup viewGroup, Set set) {
        h.e(set, "<this>");
        r rVar = new r(set);
        UnfoldConstantTranslateAnimator$registerViewsForAnimation$1 predicate = new l() { // from class: com.android.systemui.shared.animation.UnfoldConstantTranslateAnimator$registerViewsForAnimation$1
            @Override // m3.l
            public final Boolean invoke(UnfoldConstantTranslateAnimator.ViewIdToTranslate it) {
                h.e(it, "it");
                return (Boolean) it.getShouldBeAnimated().invoke();
            }
        };
        h.e(predicate, "predicate");
        this.viewsToTranslate = j.c(j.b(new d(rVar, true, predicate), new l() { // from class: com.android.systemui.shared.animation.UnfoldConstantTranslateAnimator$registerViewsForAnimation$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // m3.l
            public final UnfoldConstantTranslateAnimator.ViewToTranslate invoke(UnfoldConstantTranslateAnimator.ViewIdToTranslate it) {
                h.e(it, "it");
                View findViewById = viewGroup.findViewById(it.getViewId());
                if (findViewById != null) {
                    return new UnfoldConstantTranslateAnimator.ViewToTranslate(new WeakReference(findViewById), it.getDirection(), it.getTranslateFunc());
                }
                return null;
            }
        }));
    }

    private final void translateViews(float f4) {
        float f5 = (f4 - 1.0f) * this.translationMax;
        ViewGroup viewGroup = this.rootView;
        if (viewGroup == null) {
            h.g("rootView");
            throw null;
        }
        int i4 = viewGroup.getLayoutDirection() == 1 ? -1 : 1;
        for (ViewToTranslate viewToTranslate : this.viewsToTranslate) {
            WeakReference component1 = viewToTranslate.component1();
            Direction component2 = viewToTranslate.component2();
            p component3 = viewToTranslate.component3();
            View view = (View) component1.get();
            if (view != null) {
                component3.invoke(view, Float.valueOf(component2.getMultiplier() * f5 * i4));
            }
        }
    }

    public final void init(ViewGroup rootView, float f4) {
        h.e(rootView, "rootView");
        this.rootView = rootView;
        this.translationMax = f4;
        this.progressProvider.addCallback(this);
    }

    @Override // t1.InterfaceC1405d
    public void onTransitionFinished() {
        translateViews(1.0f);
    }

    @Override // t1.InterfaceC1405d
    public /* bridge */ /* synthetic */ void onTransitionFinishing() {
    }

    @Override // t1.InterfaceC1405d
    public void onTransitionProgress(float f4) {
        translateViews(f4);
    }

    @Override // t1.InterfaceC1405d
    public void onTransitionStarted() {
        ViewGroup viewGroup = this.rootView;
        if (viewGroup != null) {
            registerViewsForAnimation(viewGroup, this.viewsIdToTranslate);
        } else {
            h.g("rootView");
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public final class ViewIdToTranslate {
        private final Direction direction;
        private final a shouldBeAnimated;
        private final p translateFunc;
        private final int viewId;

        public ViewIdToTranslate(int i4, Direction direction, a shouldBeAnimated, p translateFunc) {
            h.e(direction, "direction");
            h.e(shouldBeAnimated, "shouldBeAnimated");
            h.e(translateFunc, "translateFunc");
            this.viewId = i4;
            this.direction = direction;
            this.shouldBeAnimated = shouldBeAnimated;
            this.translateFunc = translateFunc;
        }

        public static /* synthetic */ ViewIdToTranslate copy$default(ViewIdToTranslate viewIdToTranslate, int i4, Direction direction, a aVar, p pVar, int i5, Object obj) {
            if ((i5 & 1) != 0) {
                i4 = viewIdToTranslate.viewId;
            }
            if ((i5 & 2) != 0) {
                direction = viewIdToTranslate.direction;
            }
            if ((i5 & 4) != 0) {
                aVar = viewIdToTranslate.shouldBeAnimated;
            }
            if ((i5 & 8) != 0) {
                pVar = viewIdToTranslate.translateFunc;
            }
            return viewIdToTranslate.copy(i4, direction, aVar, pVar);
        }

        public final int component1() {
            return this.viewId;
        }

        public final Direction component2() {
            return this.direction;
        }

        public final a component3() {
            return this.shouldBeAnimated;
        }

        public final p component4() {
            return this.translateFunc;
        }

        public final ViewIdToTranslate copy(int i4, Direction direction, a shouldBeAnimated, p translateFunc) {
            h.e(direction, "direction");
            h.e(shouldBeAnimated, "shouldBeAnimated");
            h.e(translateFunc, "translateFunc");
            return new ViewIdToTranslate(i4, direction, shouldBeAnimated, translateFunc);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ViewIdToTranslate) {
                ViewIdToTranslate viewIdToTranslate = (ViewIdToTranslate) obj;
                return this.viewId == viewIdToTranslate.viewId && this.direction == viewIdToTranslate.direction && h.a(this.shouldBeAnimated, viewIdToTranslate.shouldBeAnimated) && h.a(this.translateFunc, viewIdToTranslate.translateFunc);
            }
            return false;
        }

        public final Direction getDirection() {
            return this.direction;
        }

        public final a getShouldBeAnimated() {
            return this.shouldBeAnimated;
        }

        public final p getTranslateFunc() {
            return this.translateFunc;
        }

        public final int getViewId() {
            return this.viewId;
        }

        public int hashCode() {
            int hashCode = this.direction.hashCode();
            int hashCode2 = this.shouldBeAnimated.hashCode();
            return this.translateFunc.hashCode() + ((hashCode2 + ((hashCode + (Integer.hashCode(this.viewId) * 31)) * 31)) * 31);
        }

        public String toString() {
            int i4 = this.viewId;
            Direction direction = this.direction;
            a aVar = this.shouldBeAnimated;
            p pVar = this.translateFunc;
            return "ViewIdToTranslate(viewId=" + i4 + ", direction=" + direction + ", shouldBeAnimated=" + aVar + ", translateFunc=" + pVar + ")";
        }

        public /* synthetic */ ViewIdToTranslate(int i4, Direction direction, a aVar, p pVar, int i5, f fVar) {
            this(i4, direction, (i5 & 4) != 0 ? new a() { // from class: com.android.systemui.shared.animation.UnfoldConstantTranslateAnimator.ViewIdToTranslate.1
                @Override // m3.a
                public final Boolean invoke() {
                    return Boolean.TRUE;
                }
            } : aVar, (i5 & 8) != 0 ? new p() { // from class: com.android.systemui.shared.animation.UnfoldConstantTranslateAnimator.ViewIdToTranslate.2
                @Override // m3.p
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((View) obj, ((Number) obj2).floatValue());
                    return e3.f.f9037a;
                }

                public final void invoke(View view, float f4) {
                    h.e(view, "view");
                    view.setTranslationX(f4);
                }
            } : pVar);
        }
    }
}
