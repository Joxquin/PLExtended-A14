package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchAction;
import android.app.search.SearchTarget;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.slice.Slice;
import androidx.slice.SliceItem;
import androidx.slice.widget.SliceView;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$Slice;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import f0.C0836c;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class SearchResultIconSlice extends com.android.systemui.animation.view.a implements A2, f0.M {

    /* renamed from: o  reason: collision with root package name */
    public static final /* synthetic */ int f6753o = 0;

    /* renamed from: e  reason: collision with root package name */
    public final C0719y0 f6754e;

    /* renamed from: f  reason: collision with root package name */
    public SliceView f6755f;

    /* renamed from: g  reason: collision with root package name */
    public View f6756g;

    /* renamed from: h  reason: collision with root package name */
    public SearchResultIcon f6757h;

    /* renamed from: i  reason: collision with root package name */
    public C0640e0 f6758i;

    /* renamed from: j  reason: collision with root package name */
    public String f6759j;

    /* renamed from: k  reason: collision with root package name */
    public String f6760k;

    /* renamed from: l  reason: collision with root package name */
    public int f6761l;

    /* renamed from: m  reason: collision with root package name */
    public Bundle f6762m;

    /* renamed from: n  reason: collision with root package name */
    public SearchTarget f6763n;

    public SearchResultIconSlice(Context context) {
        this(context, null, 0);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final boolean d() {
        return this.f6757h.d() || D2.h(this.f6761l, 4);
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.apps.nexuslauncher.allapps.Q1] */
    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final void e(final C0653h1 c0653h1) {
        SearchTarget searchTarget = c0653h1.f7080a;
        this.f6763n = searchTarget;
        final List list = c0653h1.f7081b;
        if (searchTarget.getExtras() == null || !searchTarget.getExtras().getBoolean("use_full_height", false)) {
            this.f6755f.h(1);
            setLayoutParams(new LinearLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.search_result_row_height)));
        } else {
            this.f6755f.h(2);
            setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        }
        SliceView sliceView = this.f6755f;
        sliceView.f4148y = null;
        sliceView.f4128e.k(null);
        this.f6757h.reset();
        C0640e0 c0640e0 = this.f6758i;
        if (c0640e0 != null) {
            c0640e0.close();
        }
        if (FeatureFlags.ENABLE_DEVICE_SEARCH_PERFORMANCE_LOGGING.get()) {
            StatsLogManager.StatsLogger logger = ((ActivityContext) this.f6754e.f7271d).getStatsLogManager().logger();
            LauncherAtom$Slice.Builder newBuilder = LauncherAtom$Slice.newBuilder();
            newBuilder.setUri(searchTarget.getSliceUri().toString());
            logger.withSlice((LauncherAtom$Slice) newBuilder.build()).log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_SLICE_FETCH_REQUESTED);
        }
        this.f6756g.setVisibility(8);
        this.f6755f.setVisibility(0);
        C0719y0 c0719y0 = this.f6754e;
        Uri sliceUri = searchTarget.getSliceUri();
        SliceView sliceView2 = this.f6755f;
        ?? r9 = new Consumer() { // from class: com.google.android.apps.nexuslauncher.allapps.Q1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                final SearchResultIconSlice searchResultIconSlice = SearchResultIconSlice.this;
                List list2 = list;
                C0653h1 c0653h12 = c0653h1;
                int i4 = SearchResultIconSlice.f6753o;
                searchResultIconSlice.getClass();
                if (list2.isEmpty()) {
                    ActivityAllAppsContainerView appsView = ((ActivityContext) searchResultIconSlice.f6754e.f7271d).getAppsView();
                    ArrayList arrayList = (ArrayList) appsView.getSearchResultList().getAdapterItems();
                    int indexOf = arrayList.indexOf(c0653h12);
                    if (indexOf >= 0) {
                        arrayList.remove(indexOf);
                        appsView.getSearchRecyclerView().getAdapter().notifyItemRemoved(indexOf);
                        return;
                    }
                    return;
                }
                SearchTarget searchTarget2 = (SearchTarget) list2.get(0);
                SearchAction searchAction = searchTarget2.getSearchAction();
                if (searchAction == null) {
                    return;
                }
                searchResultIconSlice.f6755f.setVisibility(8);
                searchResultIconSlice.f6756g.setVisibility(0);
                ((TextView) searchResultIconSlice.f6756g.findViewById(R.id.fallback_title)).setText(Html.fromHtml(searchAction.getTitle().toString()));
                ((TextView) searchResultIconSlice.f6756g.findViewById(R.id.fallback_subtitle)).setText(searchAction.getSubtitle());
                C0649g1 c0649g1 = new C0649g1(searchAction.getIcon(), searchTarget2.getPackageName(), searchTarget2.getUserHandle(), searchAction.getTitle(), searchTarget2.getResultType() == 4, searchResultIconSlice.f6754e.K());
                c0649g1.w(searchAction.getIntent());
                if (searchTarget2.getResultType() == 16) {
                    c0649g1.v(6);
                }
                searchResultIconSlice.f6756g.setTag(c0649g1);
                searchResultIconSlice.f6756g.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.apps.nexuslauncher.allapps.R1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SearchResultIconSlice searchResultIconSlice2 = SearchResultIconSlice.this;
                        ((ActivityContext) searchResultIconSlice2.f6754e.f7271d).getItemOnClickListener().onClick(view);
                        A2.g(searchResultIconSlice2.f6754e, searchResultIconSlice2.f6763n, 5);
                    }
                });
            }
        };
        ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 = (ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0) c0719y0.f7272e.get(sliceUri);
        if (viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 == null) {
            viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 = new ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0(c0719y0, sliceUri);
            c0719y0.f7272e.put(sliceUri, viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0);
        }
        C0684p0 c0684p0 = new C0684p0(c0719y0, sliceUri, r9, sliceView2);
        viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.f7249f.add(c0684p0);
        viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.b();
        Slice slice = viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.f7252i;
        if (slice != null) {
            c0684p0.i(slice);
        }
        this.f6758i = new C0640e0(viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0, c0684p0);
        this.f6761l = D2.f((Bundle) Objects.requireNonNullElse(searchTarget.getExtras(), new Bundle()));
        this.f6762m = searchTarget.getExtras();
        if (this.f6759j.equals(searchTarget.getId())) {
            return;
        }
        this.f6759j = searchTarget.getId();
        ArrayList arrayList = (ArrayList) list;
        if (arrayList.size() == 1) {
            this.f6757h.e(C0653h1.a((SearchTarget) arrayList.get(0)));
        } else {
            PackageItemInfo packageItemInfo = new PackageItemInfo(-1, searchTarget.getUserHandle(), searchTarget.getPackageName());
            if (!packageItemInfo.equals(this.f6757h.getTag())) {
                this.f6757h.applyFromItemInfoWithIcon(packageItemInfo);
            }
        }
        this.f6757h.setVisibility(8);
        Bundle bundle = this.f6762m;
        if (bundle != null) {
            this.f6760k = bundle.getString("slice_title", "");
        } else {
            this.f6760k = "";
        }
        h(c0653h1.f7083d);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final CharSequence f() {
        return this.f6760k;
    }

    public final void k(SliceItem sliceItem, C0836c c0836c) {
        StatsLogManager.StatsLogger withSliceItem = ((ActivityContext) this.f6754e.f7271d).getStatsLogManager().logger().withSliceItem(sliceItem);
        LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
        newBuilder.setExtendedContainers(this.f6754e.i(this.f6762m));
        StatsLogManager.StatsLogger withContainerInfo = withSliceItem.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build());
        int i4 = c0836c.f9150b;
        if (i4 == 2) {
            withContainerInfo.withRank(c0836c.f9156h);
        } else if (i4 == 1) {
            withContainerInfo.withRank(c0836c.f9155g);
        }
        int i5 = c0836c.f9150b;
        withContainerInfo.log(i5 != 0 ? i5 != 1 ? i5 != 2 ? i5 != 3 ? i5 != 4 ? i5 != 5 ? StatsLogManager.LauncherEvent.LAUNCHER_SLICE_DEFAULT_ACTION : StatsLogManager.LauncherEvent.LAUNCHER_SLICE_SELECTION_ACTION : StatsLogManager.LauncherEvent.LAUNCHER_SLICE_SEE_MORE_ACTION : StatsLogManager.LauncherEvent.LAUNCHER_SLICE_CONTENT_ACTION : StatsLogManager.LauncherEvent.LAUNCHER_SLICE_SLIDER_ACTION : StatsLogManager.LauncherEvent.LAUNCHER_SLICE_BUTTON_ACTION : c0836c.f9156h == 1 ? StatsLogManager.LauncherEvent.LAUNCHER_SLICE_TOGGLE_ON : StatsLogManager.LauncherEvent.LAUNCHER_SLICE_TOGGLE_OFF);
        A2.g(this.f6754e, this.f6763n, 5);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final boolean n() {
        return this.f6755f.performClick();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        SliceView sliceView = this.f6755f;
        sliceView.f4148y = this;
        sliceView.f4128e.k(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SliceView sliceView = this.f6755f;
        sliceView.f4148y = null;
        sliceView.f4128e.k(null);
        this.f6757h.reset();
        C0640e0 c0640e0 = this.f6758i;
        if (c0640e0 != null) {
            c0640e0.close();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f6755f = (SliceView) findViewById(R.id.slice);
        this.f6756g = findViewById(R.id.fallback_text_rows);
        SearchResultIcon searchResultIcon = (SearchResultIcon) findViewById(R.id.icon);
        this.f6757h = searchResultIcon;
        searchResultIcon.setTextVisibility(false);
        this.f6757h.getLayoutParams().height = ((ActivityContext) this.f6754e.f7271d).getDeviceProfile().iconSizePx;
    }

    public SearchResultIconSlice(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchResultIconSlice(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f6759j = "";
        this.f6760k = "";
        this.f6761l = 0;
        this.f6754e = C0719y0.f(context);
    }
}
