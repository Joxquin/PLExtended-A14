package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import android.app.search.SearchTargetEvent;
import android.content.Context;
import android.graphics.Point;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Toast;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.BaseWidgetSheet;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.PendingItemDragHelper;
import com.android.launcher3.widget.WidgetCell;
import com.android.launcher3.widget.WidgetImageView;
import com.android.systemui.shared.R;
import f1.C0857g;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class SearchResultWidgetPreview extends com.android.systemui.animation.view.a implements A2, View.OnClickListener, View.OnLongClickListener {

    /* renamed from: e  reason: collision with root package name */
    public final C0719y0 f6850e;

    /* renamed from: f  reason: collision with root package name */
    public final LauncherAppState f6851f;

    /* renamed from: g  reason: collision with root package name */
    public WidgetCell f6852g;

    /* renamed from: h  reason: collision with root package name */
    public Toast f6853h;

    /* renamed from: i  reason: collision with root package name */
    public HandlerRunnable f6854i;

    /* renamed from: j  reason: collision with root package name */
    public String f6855j;

    /* renamed from: k  reason: collision with root package name */
    public SearchTarget f6856k;

    public SearchResultWidgetPreview(Context context) {
        this(context, null, 0);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final void e(C0653h1 c0653h1) {
        SearchTarget searchTarget = c0653h1.f7080a;
        this.f6856k = searchTarget;
        this.f6855j = searchTarget.getId();
        final LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(getContext(), searchTarget.getAppWidgetProviderInfo());
        this.f6852g.clear();
        HandlerRunnable handlerRunnable = this.f6854i;
        if (handlerRunnable != null) {
            handlerRunnable.cancel();
        }
        LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
        Handler handler = looperExecutor.getHandler();
        Supplier supplier = new Supplier() { // from class: com.google.android.apps.nexuslauncher.allapps.p2
            @Override // java.util.function.Supplier
            public final Object get() {
                SearchResultWidgetPreview searchResultWidgetPreview = SearchResultWidgetPreview.this;
                return new WidgetItem(fromProviderInfo, LauncherAppState.getIDP(searchResultWidgetPreview.f6850e), searchResultWidgetPreview.f6851f.getIconCache(), searchResultWidgetPreview.f6850e);
            }
        };
        LooperExecutor looperExecutor2 = Executors.MAIN_EXECUTOR;
        final WidgetCell widgetCell = this.f6852g;
        Objects.requireNonNull(widgetCell);
        this.f6854i = new HandlerRunnable(handler, supplier, looperExecutor2, new Consumer() { // from class: com.google.android.apps.nexuslauncher.allapps.q2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WidgetCell widgetCell2 = WidgetCell.this;
                widgetCell2.getClass();
                widgetCell2.applyFromCellItem((WidgetItem) obj, 1.0f, new C0857g(widgetCell2), null);
            }
        });
        Utilities.postAsyncCallback(looperExecutor.getHandler(), this.f6854i);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f6853h = BaseWidgetSheet.showWidgetToast(getContext(), this.f6853h);
        this.f6850e.z(D2.g(this.f6856k), new SearchTargetEvent.Builder(this.f6855j, 5).build());
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        WidgetCell widgetCell = (WidgetCell) findViewById(R.id.widget_cell);
        this.f6852g = widgetCell;
        widgetCell.setOnLongClickListener(this);
        this.f6852g.setOnClickListener(this);
        this.f6852g.setSourceContainer(-104);
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        view.cancelLongPress();
        ActivityContext activityContext = (ActivityContext) this.f6850e.f7271d;
        if ((activityContext instanceof Launcher) && ItemLongClickListener.canStartDrag((Launcher) activityContext) && this.f6852g.getTag() != null) {
            WidgetImageView widgetView = this.f6852g.getWidgetView();
            if (widgetView.getDrawable() == null) {
                return false;
            }
            int[] iArr = new int[2];
            ((ActivityContext) this.f6850e.f7271d).getDragLayer().getLocationInDragLayer(widgetView, iArr);
            new PendingItemDragHelper(this.f6852g).startDrag(widgetView.getBitmapBounds(), widgetView.getDrawable().getIntrinsicWidth(), widgetView.getWidth(), new Point(iArr[0], iArr[1]), ((ActivityContext) this.f6850e.f7271d).getAppsView(), new DragOptions());
            this.f6850e.z(D2.g(this.f6856k), new SearchTargetEvent.Builder(this.f6855j, 4).build());
            return true;
        }
        return false;
    }

    public SearchResultWidgetPreview(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchResultWidgetPreview(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f6850e = C0719y0.f(context);
        this.f6851f = LauncherAppState.getInstance(context);
    }
}
