package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import android.app.search.SearchTargetEvent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.UserHandle;
import android.util.AttributeSet;
import android.util.Size;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.widget.util.WidgetSizes;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class SearchResultWidget extends com.android.systemui.animation.view.a implements A2, DraggableView, View.OnLongClickListener {

    /* renamed from: e  reason: collision with root package name */
    public final Rect f6838e;

    /* renamed from: f  reason: collision with root package name */
    public final C0719y0 f6839f;

    /* renamed from: g  reason: collision with root package name */
    public final CheckLongPressHelper f6840g;

    /* renamed from: h  reason: collision with root package name */
    public final GestureDetector f6841h;

    /* renamed from: i  reason: collision with root package name */
    public final C0678n2 f6842i;

    /* renamed from: j  reason: collision with root package name */
    public final float f6843j;

    /* renamed from: k  reason: collision with root package name */
    public BubbleTextView f6844k;

    /* renamed from: l  reason: collision with root package name */
    public TextView f6845l;

    /* renamed from: m  reason: collision with root package name */
    public String f6846m;

    /* renamed from: n  reason: collision with root package name */
    public H2 f6847n;

    /* renamed from: o  reason: collision with root package name */
    public HandlerRunnable f6848o;

    /* renamed from: p  reason: collision with root package name */
    public SearchTarget f6849p;

    public SearchResultWidget(Context context) {
        this(context, null, 0);
    }

    @Override // android.view.View
    public final void cancelLongPress() {
        super.cancelLongPress();
        this.f6840g.cancelLongPress();
    }

    public void e(C0653h1 c0653h1) {
        H2 h22;
        SearchTarget searchTarget = c0653h1.f7080a;
        this.f6849p = searchTarget;
        if (searchTarget.getId().equals(this.f6846m)) {
            return;
        }
        this.f6846m = searchTarget.getId();
        final AppWidgetProviderInfo appWidgetProviderInfo = searchTarget.getAppWidgetProviderInfo();
        l();
        this.f6844k.applyFromItemInfoWithIcon(new PackageItemInfo(-1, appWidgetProviderInfo.getProfile(), appWidgetProviderInfo.provider.getPackageName()));
        LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
        Handler handler = looperExecutor.getHandler();
        Supplier supplier = new Supplier() { // from class: com.google.android.apps.nexuslauncher.allapps.l2
            @Override // java.util.function.Supplier
            public final Object get() {
                SearchResultWidget searchResultWidget = SearchResultWidget.this;
                return LauncherAppState.getInstance(searchResultWidget.f6839f).getIconCache().getTitleNoCache(LauncherAppWidgetProviderInfo.fromProviderInfo(searchResultWidget.f6839f, appWidgetProviderInfo));
            }
        };
        LooperExecutor looperExecutor2 = Executors.MAIN_EXECUTOR;
        final TextView textView = this.f6845l;
        Objects.requireNonNull(textView);
        this.f6848o = new HandlerRunnable(handler, supplier, looperExecutor2, new Consumer() { // from class: com.google.android.apps.nexuslauncher.allapps.m2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                textView.setText((String) obj);
            }
        });
        Utilities.postAsyncCallback(looperExecutor.getHandler(), this.f6848o);
        C0719y0 c0719y0 = this.f6839f;
        if (c0719y0.f7281n == null) {
            C0707v0 c0707v0 = new C0707v0(c0719y0.f7271d);
            c0719y0.f7281n = c0707v0;
            c0707v0.startListening();
        }
        ComponentName componentName = appWidgetProviderInfo.provider;
        UserHandle profile = appWidgetProviderInfo.getProfile();
        ComponentKey componentKey = new ComponentKey(componentName, profile);
        if (c0719y0.f7275h.containsKey(componentKey)) {
            h22 = (H2) c0719y0.f7275h.get(componentKey);
        } else {
            PendingAddWidgetInfo pendingAddWidgetInfo = new PendingAddWidgetInfo(LauncherAppWidgetProviderInfo.fromProviderInfo(c0719y0.f7271d, appWidgetProviderInfo), -104);
            Bundle widgetSizeOptions = WidgetSizes.getWidgetSizeOptions(c0719y0.f7271d, pendingAddWidgetInfo.componentName, pendingAddWidgetInfo.spanX, pendingAddWidgetInfo.spanY);
            int allocateAppWidgetId = c0719y0.f7281n.allocateAppWidgetId();
            if (AppWidgetManager.getInstance(c0719y0.f7271d).bindAppWidgetIdIfAllowed(allocateAppWidgetId, profile, componentName, widgetSizeOptions)) {
                h22 = (H2) c0719y0.f7281n.createView(c0719y0.f7271d, allocateAppWidgetId, appWidgetProviderInfo);
                h22.setTag(pendingAddWidgetInfo);
                c0719y0.f7275h.put(componentKey, h22);
            } else {
                c0719y0.f7281n.deleteAppWidgetId(allocateAppWidgetId);
                c0719y0.f7275h.put(componentKey, null);
                h22 = null;
            }
        }
        k(h22);
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public final void getSourceVisualDragBounds(Rect rect) {
        this.f6842i.getHitRect(this.f6838e);
        Rect rect2 = this.f6838e;
        int i4 = rect2.left;
        int i5 = rect2.top;
        rect.set(i4, i5, ((int) (this.f6842i.getMeasuredWidth() * this.f6843j)) + i4, ((int) (this.f6842i.getMeasuredHeight() * this.f6843j)) + i5);
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public final int getViewType() {
        return 1;
    }

    public final void k(H2 h22) {
        if (h22 == null) {
            setVisibility(8);
            return;
        }
        this.f6847n = h22;
        setVisibility(0);
        H2 h23 = this.f6847n;
        C0678n2 c0678n2 = this.f6842i;
        c0678n2.setTag(h23.getTag());
        c0678n2.setAppWidget(h23.f6578d, h23.f6579e);
        c0678n2.updateAppWidget(h23.f6580f);
        ((ArrayList) h23.f6581g).add(c0678n2);
        PendingAddWidgetInfo pendingAddWidgetInfo = (PendingAddWidgetInfo) this.f6842i.getTag();
        Size widgetSizePx = WidgetSizes.getWidgetSizePx(((ActivityContext) this.f6839f.f7271d).getDeviceProfile(), pendingAddWidgetInfo.spanX, pendingAddWidgetInfo.spanY);
        this.f6842i.getLayoutParams().width = widgetSizePx.getWidth();
        this.f6842i.getLayoutParams().height = widgetSizePx.getHeight();
        WidgetSizes.updateWidgetSizeRanges(this.f6842i, this.f6839f, pendingAddWidgetInfo.spanX, pendingAddWidgetInfo.spanY);
        this.f6842i.requestLayout();
        setTag(pendingAddWidgetInfo);
    }

    public final void l() {
        H2 h22 = this.f6847n;
        if (h22 != null) {
            ((ArrayList) h22.f6581g).remove(this.f6842i);
            this.f6847n = null;
        }
        HandlerRunnable handlerRunnable = this.f6848o;
        if (handlerRunnable != null) {
            handlerRunnable.cancel();
            this.f6848o = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        l();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f6844k = (BubbleTextView) findViewById(R.id.widget_provider);
        this.f6845l = (TextView) findViewById(R.id.widget_label);
        addView(this.f6842i);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f6840g.onTouchEvent(motionEvent);
        this.f6841h.onTouchEvent(motionEvent);
        return this.f6840g.hasPerformedLongPress();
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        ItemLongClickListener.INSTANCE_ALL_APPS.onLongClick(view);
        return false;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        this.f6840g.onTouchEvent(motionEvent);
        return true;
    }

    public SearchResultWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.apps.nexuslauncher.allapps.k2] */
    public SearchResultWidget(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f6838e = new Rect();
        C0719y0 f4 = C0719y0.f(context);
        this.f6839f = f4;
        this.f6842i = new C0678n2(context);
        PointF appWidgetScale = ((ActivityContext) f4.f7271d).getDeviceProfile().getAppWidgetScale(null);
        this.f6843j = Math.min(appWidgetScale.x, appWidgetScale.y);
        this.f6841h = new GestureDetector(context, new C0682o2(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.k2
            @Override // java.lang.Runnable
            public final void run() {
                SearchResultWidget searchResultWidget = SearchResultWidget.this;
                searchResultWidget.f6839f.z(D2.g(searchResultWidget.f6849p), new SearchTargetEvent.Builder(searchResultWidget.f6846m, 5).build());
            }
        }));
        CheckLongPressHelper checkLongPressHelper = new CheckLongPressHelper(this, null);
        this.f6840g = checkLongPressHelper;
        checkLongPressHelper.setLongPressTimeoutFactor();
        setOnLongClickListener(this);
    }
}
