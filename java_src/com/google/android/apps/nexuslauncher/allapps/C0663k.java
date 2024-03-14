package com.google.android.apps.nexuslauncher.allapps;

import a2.C0163f;
import android.app.search.Query;
import android.app.search.SearchTarget;
import android.app.search.SearchTargetEvent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.AbstractC0274i0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.allapps.search.SearchAdapterProvider;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.search.SearchEditText;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import z0.C1495c;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0663k extends SearchAdapterProvider {

    /* renamed from: a  reason: collision with root package name */
    public final ActivityAllAppsContainerView f7100a;

    /* renamed from: b  reason: collision with root package name */
    public final C0719y0 f7101b;

    /* renamed from: c  reason: collision with root package name */
    public final SparseIntArray f7102c;

    /* renamed from: d  reason: collision with root package name */
    public final C0701t2 f7103d;

    /* renamed from: e  reason: collision with root package name */
    public A2 f7104e;

    /* renamed from: f  reason: collision with root package name */
    public A2 f7105f;

    public C0663k(ActivityAllAppsContainerView activityAllAppsContainerView, C0719y0 c0719y0) {
        super((ActivityContext) c0719y0.f7271d);
        SparseIntArray sparseIntArray = new SparseIntArray();
        this.f7102c = sparseIntArray;
        this.f7104e = null;
        this.f7105f = null;
        this.f7100a = activityAllAppsContainerView;
        this.f7101b = c0719y0;
        this.f7103d = new C0701t2(activityAllAppsContainerView);
        sparseIntArray.put(64, R.layout.search_section_title);
        sparseIntArray.put(258, R.layout.search_result_icon);
        sparseIntArray.put(512, R.layout.search_result_big_icon_row);
        sparseIntArray.put(1024, R.layout.search_result_small_icon_row);
        sparseIntArray.put(128, R.layout.search_result_small_icon_slice_row);
        sparseIntArray.put(524288, R.layout.search_result_thumbnail_container);
        sparseIntArray.put(2048, R.layout.search_result_thumbnail);
        sparseIntArray.put(4096, R.layout.search_result_widget_live);
        sparseIntArray.put(8192, R.layout.search_result_widget_preview);
        sparseIntArray.put(16384, R.layout.search_result_people_tile);
        sparseIntArray.put(8, R.layout.all_apps_divider);
        sparseIntArray.put(32768, R.layout.search_result_divider);
        sparseIntArray.put(65536, R.layout.search_all_apps_button);
        sparseIntArray.put(131072, R.layout.search_edu_card);
        sparseIntArray.put(262144, R.layout.section_header);
        sparseIntArray.put(1048576, R.layout.tall_card_with_image_no_icon);
        sparseIntArray.put(2097152, R.layout.text_header_row);
        sparseIntArray.put(QuickStepContract.SYSUI_STATE_BACK_DISABLED, R.layout.search_result_icon_container);
        sparseIntArray.put(QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED, R.layout.search_result_qs_tile);
        sparseIntArray.put(QuickStepContract.SYSUI_STATE_IMMERSIVE_MODE, R.layout.search_result_qs_tile_container);
        sparseIntArray.put(QuickStepContract.SYSUI_STATE_VOICE_INTERACTION_WINDOW_SHOWING, R.layout.search_preferences_icons);
    }

    public static void a(C0663k c0663k, OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState) {
        c0663k.mLauncher.getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_SETTINGS_BUTTON_TAP);
        OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState2 = OneSearchSessionManager$ZeroEntryState.f6664e;
        boolean z4 = oneSearchSessionManager$ZeroEntryState == oneSearchSessionManager$ZeroEntryState2;
        C0719y0 c0719y0 = c0663k.f7101b;
        if (z4 && C0716x1.a(c0719y0.getPackageManager())) {
            c0719y0.startActivity(C0163f.f2402b);
        } else {
            C0716x1.b(c0719y0, oneSearchSessionManager$ZeroEntryState == oneSearchSessionManager$ZeroEntryState2);
        }
    }

    public static void b(C0663k c0663k, BaseAllAppsAdapter.ViewHolder viewHolder, OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState) {
        c0663k.getClass();
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        ActivityAllAppsContainerView activityAllAppsContainerView = c0663k.f7100a;
        ArrayList arrayList = (ArrayList) activityAllAppsContainerView.getSearchResultList().getAdapterItems();
        SearchTarget searchTarget = ((C0653h1) arrayList.get(bindingAdapterPosition)).f7080a;
        if (bindingAdapterPosition == -1 || ((BaseAllAppsAdapter.AdapterItem) arrayList.get(bindingAdapterPosition)).viewType != 131072) {
            int i4 = 0;
            while (true) {
                if (i4 >= arrayList.size()) {
                    break;
                } else if (((BaseAllAppsAdapter.AdapterItem) arrayList.get(i4)).viewType == 131072) {
                    bindingAdapterPosition = i4;
                    break;
                } else {
                    i4++;
                }
            }
        }
        arrayList.remove(bindingAdapterPosition);
        activityAllAppsContainerView.getSearchRecyclerView().getAdapter().notifyItemRemoved(bindingAdapterPosition);
        Query g4 = D2.g(searchTarget);
        SearchTargetEvent build = new SearchTargetEvent.Builder("EDUCARD:" + Process.myUserHandle().getIdentifier() + ":toast:EDUCARD", 10).build();
        C0719y0 c0719y0 = c0663k.f7101b;
        c0719y0.z(g4, build);
        c0663k.mLauncher.getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_EDU_CARD_DISMISS);
        if (oneSearchSessionManager$ZeroEntryState == OneSearchSessionManager$ZeroEntryState.f6664e) {
            c0719y0.f7293z = true;
            g3 g3Var = c0719y0.f7284q;
            synchronized (g3Var.f7068f) {
                g3Var.d();
            }
            return;
        }
        c0719y0.f7292y = true;
        g3 g3Var2 = c0719y0.f7284q;
        synchronized (g3Var2.f7068f) {
            g3Var2.d();
        }
    }

    public static /* synthetic */ void c(C0663k c0663k, View view) {
        ActivityContext activityContext = c0663k.mLauncher;
        activityContext.getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_LEARN_MORE_BUTTON_TAP);
        String language = Locale.getDefault().getLanguage();
        activityContext.startActivitySafely(view, new Intent("android.intent.action.VIEW", Uri.parse("https://support.google.com/pixelphone?p=search_your_phone&hl=" + language)).setFlags(268435456), null);
    }

    public static boolean d(SearchTarget searchTarget, HashMap hashMap) {
        if (hashMap.containsKey(searchTarget.getParentId())) {
            ((ArrayList) ((C0653h1) hashMap.get(searchTarget.getParentId())).f7081b).add(searchTarget);
            return true;
        }
        return false;
    }

    public static SearchTarget e(List list, int i4, int i5) {
        do {
            i4 += i5;
            if (i4 < 0 || i4 >= list.size()) {
                return null;
            }
        } while (!TextUtils.isEmpty(((SearchTarget) list.get(i4)).getParentId()));
        return (SearchTarget) list.get(i4);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int f(SearchTarget searchTarget) {
        char c4;
        String layoutType = searchTarget.getLayoutType();
        layoutType.getClass();
        switch (layoutType.hashCode()) {
            case -1972356745:
                if (layoutType.equals("short_icon_row")) {
                    c4 = 0;
                    break;
                }
                c4 = 65535;
                break;
            case -1877395514:
                if (layoutType.equals("educard")) {
                    c4 = 1;
                    break;
                }
                c4 = 65535;
                break;
            case -1687676229:
                if (layoutType.equals("icon_texts_row")) {
                    c4 = 2;
                    break;
                }
                c4 = 65535;
                break;
            case -1221270899:
                if (layoutType.equals("header")) {
                    c4 = 3;
                    break;
                }
                c4 = 65535;
                break;
            case -1127870799:
                if (layoutType.equals("icon_texts_button")) {
                    c4 = 4;
                    break;
                }
                c4 = 65535;
                break;
            case -1078919109:
                if (layoutType.equals("icon_container")) {
                    c4 = 5;
                    break;
                }
                c4 = 65535;
                break;
            case -992780083:
                if (layoutType.equals("widget_preview")) {
                    c4 = 6;
                    break;
                }
                c4 = 65535;
                break;
            case -923280889:
                if (layoutType.equals("widget_live")) {
                    c4 = 7;
                    break;
                }
                c4 = 65535;
                break;
            case -737591020:
                if (layoutType.equals("icon_row")) {
                    c4 = '\b';
                    break;
                }
                c4 = 65535;
                break;
            case -728187014:
                if (layoutType.equals("text_header_row")) {
                    c4 = '\t';
                    break;
                }
                c4 = 65535;
                break;
            case -594724233:
                if (layoutType.equals("extra_tall_icon_row")) {
                    c4 = '\n';
                    break;
                }
                c4 = 65535;
                break;
            case -352211712:
                if (layoutType.equals("icon_row_medium")) {
                    c4 = 11;
                    break;
                }
                c4 = 65535;
                break;
            case 1683437:
                if (layoutType.equals("qs_tile_container")) {
                    c4 = '\f';
                    break;
                }
                c4 = 65535;
                break;
            case 3226745:
                if (layoutType.equals("icon")) {
                    c4 = '\r';
                    break;
                }
                c4 = 65535;
                break;
            case 109526418:
                if (layoutType.equals("slice")) {
                    c4 = 14;
                    break;
                }
                c4 = 65535;
                break;
            case 499170510:
                if (layoutType.equals("icon_text_row")) {
                    c4 = 15;
                    break;
                }
                c4 = 65535;
                break;
            case 592347819:
                if (layoutType.equals("qs_tile")) {
                    c4 = 16;
                    break;
                }
                c4 = 65535;
                break;
            case 979280423:
                if (layoutType.equals("empty_divider")) {
                    c4 = 17;
                    break;
                }
                c4 = 65535;
                break;
            case 1143151198:
                if (layoutType.equals("people_tile")) {
                    c4 = 18;
                    break;
                }
                c4 = 65535;
                break;
            case 1221348439:
                if (layoutType.equals("big_icon_medium_row")) {
                    c4 = 19;
                    break;
                }
                c4 = 65535;
                break;
            case 1329684718:
                if (layoutType.equals("thumbnail_container")) {
                    c4 = 20;
                    break;
                }
                c4 = 65535;
                break;
            case 1330532588:
                if (layoutType.equals("thumbnail")) {
                    c4 = 21;
                    break;
                }
                c4 = 65535;
                break;
            case 1349083543:
                if (layoutType.equals("tall_card_with_image_no_icon")) {
                    c4 = 22;
                    break;
                }
                c4 = 65535;
                break;
            case 1461410852:
                if (layoutType.equals("short_icon_row_thumbnail")) {
                    c4 = 23;
                    break;
                }
                c4 = 65535;
                break;
            case 2027472167:
                if (layoutType.equals("section_header")) {
                    c4 = 24;
                    break;
                }
                c4 = 65535;
                break;
            default:
                c4 = 65535;
                break;
        }
        switch (c4) {
            case 0:
            case '\n':
            case 11:
            case 23:
                return 1024;
            case 1:
                return 131072;
            case 2:
            case 4:
            case '\b':
            case 15:
            case 19:
                return 512;
            case 3:
                return 64;
            case 5:
                return QuickStepContract.SYSUI_STATE_BACK_DISABLED;
            case 6:
                return 8192;
            case 7:
                return 4096;
            case '\t':
                return 2097152;
            case '\f':
                return QuickStepContract.SYSUI_STATE_IMMERSIVE_MODE;
            case '\r':
                return 258;
            case 14:
                if (searchTarget.getSliceUri() == null) {
                    Log.w("SearchServiceAdapter", "LayoutType.ICON_SLICE target doesn't contain sliceUri.");
                    break;
                } else {
                    return 128;
                }
            case 16:
                return QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED;
            case 17:
                return 32768;
            case 18:
                return 16384;
            case 20:
                return 524288;
            case 21:
                if (searchTarget.getSearchAction() == null) {
                    Log.w("SearchServiceAdapter", "LayoutType.THUMBNAIL target doesn't contain searchAction.");
                    break;
                } else {
                    return 2048;
                }
            case 22:
                return 1048576;
            case 24:
                return 262144;
        }
        return -1;
    }

    public static ArrayList g(Context context, C0719y0 c0719y0, List list) {
        SearchTarget searchTarget;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < list.size(); i4++) {
            SearchTarget searchTarget2 = (SearchTarget) list.get(i4);
            if (!searchTarget2.shouldHide() || c0719y0.f7283p.f7199v.f7219l) {
                if (TextUtils.isEmpty(searchTarget2.getParentId())) {
                    boolean z4 = true;
                    I2 i22 = new I2(context, searchTarget2, e(list, i4, -1), e(list, i4, 1));
                    int f4 = f(searchTarget2);
                    if (f4 != -1) {
                        C0653h1 c0653h1 = new C0653h1(searchTarget2, f4, D2.f(searchTarget2.getExtras()));
                        String layoutType = searchTarget2.getLayoutType();
                        if (!layoutType.equals("empty_divider") && !layoutType.equals("section_header")) {
                            z4 = false;
                        }
                        if (!z4) {
                            c0653h1.f7083d = i22;
                        }
                        linkedHashMap.put(z4 ? searchTarget2.getId() + i4 : searchTarget2.getId(), c0653h1);
                    }
                } else if (!d(searchTarget2, linkedHashMap)) {
                    arrayList.add(searchTarget2);
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!d((SearchTarget) it.next(), linkedHashMap)) {
                Log.w("SearchServiceAdapter", "Unable to pair child " + searchTarget.getId() + " to parent " + searchTarget.getParentId());
            }
        }
        return new ArrayList(linkedHashMap.values());
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final void clearHighlightedItem() {
        this.f7104e = null;
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final AbstractC0274i0 getDecorator() {
        if (FeatureFlags.ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES.get()) {
            return null;
        }
        return this.f7103d;
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final View getHighlightedItem() {
        return (View) this.f7104e;
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final int getItemsPerRow(int i4, int i5) {
        return (i4 == 2048 || i4 == 8192) ? 3 : 1;
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final int[] getSupportedItemsPerRowArray() {
        return new int[]{3, 3};
    }

    public final boolean h() {
        this.mLauncher.getStatsLogManager().logger().withItemInfo((ItemInfo) ((View) this.f7104e).getTag()).log(StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_FOCUSED_ITEM_SELECTED_WITH_IME);
        return this.f7104e.n();
    }

    public final void i() {
        C0719y0 c0719y0 = this.f7101b;
        c0719y0.I(null);
        if (c0719y0.f7290w) {
            c0719y0.z(c0719y0.o(c0719y0.q()), new SearchTargetEvent.Builder(C1495c.b(null), 6).build());
            c0719y0.y();
        }
        A2 a22 = this.f7105f;
        StatsLogManager.LauncherEvent launcherEvent = StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_QUICK_SEARCH_WITH_IME;
        ActivityContext activityContext = this.mLauncher;
        if (a22 != null) {
            activityContext.getStatsLogManager().logger().withItemInfo((ItemInfo) ((View) this.f7105f).getTag()).log(launcherEvent);
        } else {
            activityContext.getStatsLogManager().logger().log(launcherEvent);
        }
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final boolean isViewSupported(int i4) {
        return this.f7102c.get(i4, -1) != -1;
    }

    public final void j(A2 a22, SearchTarget searchTarget) {
        this.f7104e = a22;
        ActivityAllAppsContainerView activityAllAppsContainerView = this.f7100a;
        if (a22 == null) {
            activityAllAppsContainerView.getSearchUiManager().setFocusedResultTitle("", "", false);
            return;
        }
        if (((searchTarget.getResultType() & 131345) != 0) || this.f7101b.x()) {
            activityAllAppsContainerView.getSearchUiManager().setFocusedResultTitle(this.f7104e.f(), this.f7104e.a(), Objects.equals(searchTarget.getLayoutType(), "qs_tile"));
        }
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final boolean launchHighlightedItem() {
        C0719y0 c0719y0 = this.f7101b;
        if (!c0719y0.f7283p.f7190m && !c0719y0.x()) {
            if (c0719y0.f7283p.f7185h || this.f7104e == null) {
                i();
                return true;
            }
            return h();
        }
        SearchEditText searchEditText = (SearchEditText) this.f7100a.getSearchUiManager().getEditText();
        if (this.f7104e == null || (searchEditText != null && searchEditText.j())) {
            i();
            return true;
        }
        return h();
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final void onBindView(final BaseAllAppsAdapter.ViewHolder viewHolder, int i4) {
        CharSequence charSequence;
        C0719y0 c0719y0 = this.f7101b;
        final OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState = c0719y0.f7287t;
        if (viewHolder.getItemViewType() == 32768 || viewHolder.getItemViewType() == 262144) {
            return;
        }
        int itemViewType = viewHolder.getItemViewType();
        View view = viewHolder.itemView;
        if (itemViewType == 65536) {
            view.findViewById(R.id.all_apps_button).setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.apps.nexuslauncher.allapps.h

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ C0663k f7075e;

                {
                    this.f7075e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    switch (r2) {
                        case 0:
                            this.f7075e.f7100a.getSearchUiManager().resetSearch();
                            return;
                        default:
                            C0663k.c(this.f7075e, view2);
                            return;
                    }
                }
            });
            return;
        }
        if (viewHolder.getItemViewType() == 131072) {
            TextView textView = (TextView) view.findViewById(R.id.title_text);
            TextView textView2 = (TextView) view.findViewById(R.id.body_text);
            boolean z4 = oneSearchSessionManager$ZeroEntryState == OneSearchSessionManager$ZeroEntryState.f6664e;
            FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_SEARCH_UNINSTALLED_APPS;
            textView.setText(booleanFlag.get() ? R.string.allapps_toast_hint : z4 ? R.string.qsb_search_edu_title : R.string.search_edu_title_0);
            if (booleanFlag.get()) {
                PackageManager packageManager = c0719y0.f7271d.getPackageManager();
                try {
                    charSequence = packageManager.getApplicationLabel(packageManager.getApplicationInfo("com.google.android.googlequicksearchbox", 0));
                } catch (PackageManager.NameNotFoundException e4) {
                    Log.e("SearchServiceAdapter", "Failed to get AGA label", e4);
                    charSequence = "Google";
                }
                textView2.setText(c0719y0.f7271d.getResources().getString(R.string.search_play_edu_body, charSequence));
            } else {
                textView2.setText(z4 ? R.string.qsb_search_edu_body : R.string.search_edu_body_0);
            }
            view.findViewById(R.id.got_it).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.apps.nexuslauncher.allapps.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C0663k.b(C0663k.this, viewHolder, oneSearchSessionManager$ZeroEntryState);
                }
            });
        } else if (viewHolder.getItemViewType() == 33554432) {
            view.findViewById(R.id.learn_more_button).setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.apps.nexuslauncher.allapps.h

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ C0663k f7075e;

                {
                    this.f7075e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    switch (r2) {
                        case 0:
                            this.f7075e.f7100a.getSearchUiManager().resetSearch();
                            return;
                        default:
                            C0663k.c(this.f7075e, view2);
                            return;
                    }
                }
            });
            view.findViewById(R.id.search_settings_button).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.apps.nexuslauncher.allapps.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C0663k.a(C0663k.this, oneSearchSessionManager$ZeroEntryState);
                }
            });
        } else {
            ArrayList arrayList = (ArrayList) this.f7100a.getSearchResultList().getAdapterItems();
            C0653h1 c0653h1 = (C0653h1) arrayList.get(i4);
            A2 a22 = (A2) view;
            SearchTarget searchTarget = c0653h1.f7080a;
            if (searchTarget.getResultType() == 1 && searchTarget.getLayoutType().equals("icon")) {
                searchTarget.getExtras().putInt("app_gridx", c0653h1.rowAppIndex);
            }
            a22.e(c0653h1);
            if (a22.d() && arrayList.size() > 0 && (arrayList.get(0) instanceof C0653h1) && ((C0653h1) arrayList.get(0)).f7080a.getResultType() != 131072) {
                if (com.google.android.apps.nexuslauncher.c.f7321j.get() && "qs_tile_container".equals(searchTarget.getLayoutType())) {
                    ArrayList arrayList2 = (ArrayList) c0653h1.f7081b;
                    if (arrayList2.size() > 0) {
                        j((A2) view.findViewById(R.id.tile_0), (SearchTarget) arrayList2.get(0));
                    }
                }
                j(a22, searchTarget);
            }
            if (a22.c()) {
                this.f7105f = a22;
            }
        }
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final BaseAllAppsAdapter.ViewHolder onCreateViewHolder(int i4, LayoutInflater layoutInflater, RecyclerView recyclerView) {
        return new BaseAllAppsAdapter.ViewHolder(layoutInflater.inflate(this.f7102c.get(i4), (ViewGroup) recyclerView, false));
    }
}
