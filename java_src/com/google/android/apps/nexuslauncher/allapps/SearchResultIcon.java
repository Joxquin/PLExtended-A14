package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.Query;
import android.app.search.SearchAction;
import android.app.search.SearchTarget;
import android.app.search.SearchTargetEvent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.R$styleable;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconProvider;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.OptionsPopupView;
import com.android.systemui.shared.R;
import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Supplier;
import z0.C1494b;
import z0.C1498f;
/* loaded from: classes.dex */
public class SearchResultIcon extends BubbleTextView implements A2, View.OnClickListener, View.OnLongClickListener {

    /* renamed from: D  reason: collision with root package name */
    public static final E1 f6722D = new E1();

    /* renamed from: E  reason: collision with root package name */
    public static final Point f6723E = new Point();

    /* renamed from: F  reason: collision with root package name */
    public static final F1 f6724F = new F1();

    /* renamed from: G  reason: collision with root package name */
    public static final Rect f6725G = new Rect();

    /* renamed from: H  reason: collision with root package name */
    public static final AdaptiveIconDrawable f6726H = new AdaptiveIconDrawable(new ColorDrawable(-16777216), new ColorDrawable(-1));

    /* renamed from: A  reason: collision with root package name */
    public String f6727A;

    /* renamed from: B  reason: collision with root package name */
    public boolean f6728B;

    /* renamed from: C  reason: collision with root package name */
    public final com.android.systemui.animation.u f6729C;

    /* renamed from: d  reason: collision with root package name */
    public final C0719y0 f6730d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f6731e;

    /* renamed from: f  reason: collision with root package name */
    public Consumer f6732f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f6733g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f6734h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f6735i;

    /* renamed from: j  reason: collision with root package name */
    public int f6736j;

    /* renamed from: k  reason: collision with root package name */
    public int f6737k;

    /* renamed from: l  reason: collision with root package name */
    public int f6738l;

    /* renamed from: m  reason: collision with root package name */
    public SafeCloseable f6739m;

    /* renamed from: n  reason: collision with root package name */
    public C0695s0 f6740n;

    /* renamed from: o  reason: collision with root package name */
    public SearchTarget f6741o;

    /* renamed from: p  reason: collision with root package name */
    public String f6742p;

    /* renamed from: q  reason: collision with root package name */
    public int f6743q;

    /* renamed from: r  reason: collision with root package name */
    public int f6744r;

    /* renamed from: s  reason: collision with root package name */
    public final Point f6745s;

    /* renamed from: t  reason: collision with root package name */
    public final Paint f6746t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f6747u;

    /* renamed from: v  reason: collision with root package name */
    public final int f6748v;

    /* renamed from: w  reason: collision with root package name */
    public final int f6749w;

    /* renamed from: x  reason: collision with root package name */
    public String f6750x;

    /* renamed from: y  reason: collision with root package name */
    public OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc f6751y;

    /* renamed from: z  reason: collision with root package name */
    public String f6752z;

    public SearchResultIcon(Context context) {
        this(context, null, 0);
    }

    public static /* synthetic */ e3.f l(SearchResultIcon searchResultIcon, Integer num) {
        searchResultIcon.getClass();
        super.setVisibility(num.intValue());
        return e3.f.f9037a;
    }

    public static BitmapInfo t(LauncherAppState launcherAppState, SearchTarget searchTarget) {
        PackageItemInfo packageItemInfo = new PackageItemInfo(-1, searchTarget.getUserHandle(), searchTarget.getPackageName());
        launcherAppState.getIconCache().getTitleAndIconForApp(packageItemInfo, false);
        return packageItemInfo.bitmap;
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final boolean c() {
        return D2.h(this.f6744r, 8);
    }

    @Override // com.android.launcher3.BubbleTextView
    public final boolean canShowLongPressPopup() {
        return s() != null || super.canShowLongPressPopup();
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final boolean d() {
        return D2.h(this.f6744r, 4);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final void e(C0653h1 c0653h1) {
        SearchTarget searchTarget = c0653h1.f7080a;
        this.f6742p = searchTarget.getId();
        this.f6743q = searchTarget.getResultType();
        this.f6752z = searchTarget.getExtras().getString("response_id", null);
        this.f6741o = searchTarget;
        Bundle u4 = u();
        this.f6744r = D2.f(u4);
        this.f6735i = u4.getBoolean("decorate_together");
        reset();
        boolean z4 = true;
        setLayoutHorizontal(!searchTarget.getLayoutType().equals("icon"));
        if (searchTarget.getShortcutInfo() != null) {
            invalidate();
            final ShortcutInfo shortcutInfo = searchTarget.getShortcutInfo();
            setHideBadge(!u4.getBoolean("badge_with_package", false));
            final String string = C1494b.a(searchTarget.getSearchAction()).getString("title_content_description_override");
            final String charSequence = searchTarget.getSearchAction() != null ? searchTarget.getSearchAction().getTitle().toString() : null;
            final O1 o12 = new O1(this, shortcutInfo, getContext(), D2.e(searchTarget));
            o12.container = -200;
            if (!shortcutInfo.isDynamic() && !shortcutInfo.isDeclaredInManifest()) {
                o12.runtimeStatusFlags |= 8192;
            }
            if (!"icon".equals(this.f6741o.getLayoutType()) && this.f6730d.K()) {
                o12.animationType = 1;
            }
            final LauncherAppState launcherAppState = LauncherAppState.getInstance(getContext());
            this.f6739m = this.f6730d.h(this.f6742p, Executors.MODEL_EXECUTOR.getHandler(), new Supplier() { // from class: com.google.android.apps.nexuslauncher.allapps.K1
                @Override // java.util.function.Supplier
                public final Object get() {
                    SearchResultIcon searchResultIcon = SearchResultIcon.this;
                    LauncherAppState launcherAppState2 = launcherAppState;
                    WorkspaceItemInfo workspaceItemInfo = o12;
                    ShortcutInfo shortcutInfo2 = shortcutInfo;
                    E1 e12 = SearchResultIcon.f6722D;
                    searchResultIcon.getClass();
                    if (com.google.android.apps.nexuslauncher.c.f7323l.get() || !(FeatureFlags.ENABLE_APP_ICON_FOR_INLINE_SHORTCUTS.get() || (C1498f.e(searchResultIcon.f6741o) && searchResultIcon.u().getBoolean("icon_override")))) {
                        launcherAppState2.getIconCache().getShortcutIcon(workspaceItemInfo, shortcutInfo2);
                        return workspaceItemInfo.bitmap;
                    }
                    return SearchResultIcon.t(LauncherAppState.getInstance(searchResultIcon.f6730d), searchResultIcon.f6741o);
                }
            }, new InterfaceC0703u0() { // from class: com.google.android.apps.nexuslauncher.allapps.L1
                @Override // com.google.android.apps.nexuslauncher.allapps.InterfaceC0703u0
                public final void a(BitmapInfo bitmapInfo) {
                    E1 e12 = SearchResultIcon.f6722D;
                    SearchResultIcon searchResultIcon = SearchResultIcon.this;
                    searchResultIcon.getClass();
                    WorkspaceItemInfo workspaceItemInfo = o12;
                    workspaceItemInfo.bitmap = bitmapInfo;
                    String str = charSequence;
                    if (!TextUtils.isEmpty(str)) {
                        workspaceItemInfo.title = str;
                        String str2 = string;
                        if (!TextUtils.isEmpty(str2)) {
                            str = str2;
                        }
                        workspaceItemInfo.contentDescription = str;
                    }
                    searchResultIcon.applyFromWorkspaceItem(0, workspaceItemInfo, false);
                }
            });
            this.f6733g = shortcutInfo.isDynamic() || shortcutInfo.isDeclaredInManifest();
        } else if (searchTarget.getSearchAction() != null) {
            SearchAction searchAction = this.f6741o.getSearchAction();
            final C0688q0 e4 = this.f6730d.e(this.f6741o);
            Bundle extras = searchAction.getExtras();
            boolean z5 = this.f6741o.getResultType() == 16;
            if ((extras != null && extras.getBoolean("should_start_for_result")) || z5) {
                e4.v(6);
            } else if (extras != null && extras.getBoolean("should_start")) {
                e4.v(2);
            }
            if (extras != null && extras.getBoolean("badge_with_package")) {
                e4.v(8);
            }
            if (extras != null && extras.getBoolean("badge_with_component_name")) {
                e4.v(32);
            }
            if (extras != null && extras.getBoolean("primary_icon_from_title")) {
                e4.v(16);
            }
            if (extras != null && extras.getBoolean("allow_pinning")) {
                e4.v(64);
            }
            if (extras != null) {
                this.f6750x = extras.getString("suggestion_action_text");
                this.f6751y = OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc.a(extras.getInt("suggestion_action_rpc"));
                this.f6727A = extras.getString("learn_more_url");
            }
            if (extras != null && extras.getBoolean("is_search_in_app")) {
                e4.v(128);
            }
            applyFromItemInfoWithIcon(e4);
            final Icon icon = searchAction.getIcon();
            if (icon == null || e4.u(16)) {
                final int i4 = extras.getInt("icon_integer", 0);
                if (i4 != 0) {
                    this.f6740n = this.f6730d.h(this.f6741o.getPackageName() + ":" + i4, C0719y0.j().getHandler(), new Supplier() { // from class: com.google.android.apps.nexuslauncher.allapps.J1
                        /* JADX WARN: Removed duplicated region for block: B:34:0x0111  */
                        /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
                        @Override // java.util.function.Supplier
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object get() {
                            /*
                                Method dump skipped, instructions count: 278
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.allapps.J1.get():java.lang.Object");
                        }
                    }, new I1(1, e4, this));
                } else {
                    p(null, e4);
                }
            } else {
                this.f6740n = this.f6730d.h(C0719y0.k(icon, this.f6741o), Executors.UI_HELPER_EXECUTOR.getHandler(), new Supplier() { // from class: com.google.android.apps.nexuslauncher.allapps.H1
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        SearchResultIcon searchResultIcon = SearchResultIcon.this;
                        Icon icon2 = icon;
                        C0649g1 c0649g1 = e4;
                        E1 e12 = SearchResultIcon.f6722D;
                        return searchResultIcon.v(icon2, c0649g1);
                    }
                }, new I1(0, e4, this));
            }
            boolean z6 = (!e4.u(64) || e4.f7058h == null || e4.title == null) ? false : true;
            if (!z6) {
                e4.runtimeStatusFlags |= 8192;
            }
            this.f6733g = z6 && !D2.h(this.f6744r, 2);
        } else {
            String string2 = u4.getString("class");
            String packageName = searchTarget.getPackageName();
            if (string2 == null) {
                string2 = "";
            }
            ComponentName componentName = new ComponentName(packageName, string2);
            UserHandle userHandle = searchTarget.getUserHandle();
            List e5 = D2.e(searchTarget);
            AppInfo app = ((ActivityContext) this.f6730d.f7271d).getAppsView().getAppsStore().getApp(new ComponentKey(componentName, userHandle));
            if (app == null) {
                setVisibility(8);
                Log.e("SearchResultIcon", "Unable to retrieve componentName from launcher app store. " + componentName.getClassName());
            } else {
                setVisibility(0);
                AppInfo n12 = new N1(this, app, e5);
                n12.container = -200;
                if (!"icon".equals(this.f6741o.getLayoutType()) && this.f6730d.K()) {
                    n12.animationType = 1;
                }
                if (this.f6741o.getLayoutType().equals("text_header_row")) {
                    n12.itemType = -1;
                }
                applyFromApplicationInfo(n12);
            }
            this.f6733g = true;
        }
        boolean e6 = C1498f.e(this.f6741o);
        this.f6734h = e6;
        if (e6) {
            this.f6733g = true;
            this.f6750x = ((TextView) this).mContext.getString(R.string.menu_item_text_delete);
            this.f6751y = OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc.DELETE;
            setHideBadge(true);
        }
        if ((!this.f6731e || !this.f6733g) && !this.f6734h) {
            z4 = false;
        }
        setOnLongClickListener(z4 ? this : null);
        setLongClickable(z4);
        h(c0653h1.f7083d);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (searchTarget.getParentId() != null) {
            if (layoutParams.height != -2) {
                layoutParams.height = this.f6737k;
                requestLayout();
                return;
            }
            return;
        }
        int i5 = shouldUseTwoLine() ? this.f6737k + this.f6736j : this.f6737k;
        layoutParams.height = i5;
        if (this.f6738l != i5) {
            this.f6738l = i5;
            requestLayout();
        }
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final void h(I2 i22) {
        if (i22 != null && FeatureFlags.ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES.get() && d() && this.f6730d.v() && !this.f6730d.L()) {
            C0662j2.a(this, ((TextView) this).mContext, i22, true);
        } else {
            setBackground(null);
        }
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final boolean n() {
        this.f6728B = true;
        performClick();
        return true;
    }

    public final boolean o(SearchTarget searchTarget) {
        e(C0653h1.a(searchTarget));
        if (D2.h(this.f6744r, 2)) {
            if (searchTarget.getLayoutType().equals("icon")) {
                throw new RuntimeException("LayoutType.ICON_SINGLE_VERTICAL_TEXT and flag HIDE_ICON are incompatible");
            }
            setVisibility(4);
            x(0, 0, 0);
            return false;
        }
        setVisibility(0);
        x(this.f6748v, getCompoundDrawablePadding() + getIconSize(), this.f6749w);
        return true;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f6743q != 131072) {
            String packageName = this.f6741o.getPackageName();
            if (!(this.f6743q == 512 && packageName != null && packageName.equals("com.google.android.googlequicksearchbox"))) {
                ((ActivityContext) this.f6730d.f7271d).getItemOnClickListener().onClick(view);
            }
        }
        if (this.f6728B) {
            A2.m(this.f6730d, 6, view, this.f6741o);
        } else {
            A2.m(this.f6730d, 5, view, this.f6741o);
        }
        this.f6730d.E();
    }

    @Override // com.android.launcher3.BubbleTextView, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f6747u) {
            Rect rect = f6725G;
            getIconBounds(rect);
            AdaptiveIconDrawable adaptiveIconDrawable = f6726H;
            adaptiveIconDrawable.setBounds(rect);
            canvas.drawPath(adaptiveIconDrawable.getIconMask(), this.f6746t);
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setLongPressTimeoutFactor();
        DeviceProfile deviceProfile = ((ActivityContext) this.f6730d.f7271d).getDeviceProfile();
        int i4 = deviceProfile.allAppsIconSizePx;
        int i5 = deviceProfile.allAppsIconDrawablePaddingPx;
        this.f6736j = Utilities.calculateTextHeight(deviceProfile.allAppsIconTextSizePx);
        int dimensionPixelSize = (getResources().getDimensionPixelSize(R.dimen.all_apps_predicted_icon_vertical_padding) * 2) + i4 + i5 + this.f6736j;
        this.f6737k = dimensionPixelSize;
        this.f6738l = dimensionPixelSize;
        setLayoutParams(new ViewGroup.LayoutParams(-1, this.f6737k));
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        if (this.f6733g) {
            if (this.f6743q == 131072) {
                ((ArrayList) this.f6730d.f7263C).add(Long.valueOf(SystemClock.elapsedRealtime()));
            }
            A2.g(this.f6730d, this.f6741o, 4);
            return ((ActivityContext) this.f6730d.f7271d).getAllAppsItemLongClickListener().onLongClick(view);
        }
        return false;
    }

    public final void p(final BitmapInfo bitmapInfo, final C0649g1 c0649g1) {
        final Bundle u4 = u();
        final boolean z4 = c0649g1.u(32) && u4.containsKey("class");
        final boolean u5 = c0649g1.u(8);
        if (!u5 && !z4 && bitmapInfo != null) {
            c0649g1.bitmap = bitmapInfo;
            applyFromItemInfoWithIcon(c0649g1);
            return;
        }
        final LauncherAppState launcherAppState = LauncherAppState.getInstance(this.f6730d);
        C0719y0 c0719y0 = this.f6730d;
        SearchAction searchAction = this.f6741o.getSearchAction();
        String id = this.f6741o.getId();
        String string = C1494b.a(searchAction).getString("icon_cache_key");
        this.f6739m = c0719y0.h(!TextUtils.isEmpty(string) ? string : id, Executors.MODEL_EXECUTOR.getHandler(), new Supplier() { // from class: com.google.android.apps.nexuslauncher.allapps.M1
            @Override // java.util.function.Supplier
            public final Object get() {
                BitmapInfo bitmapInfo2;
                CharSequence charSequence;
                SearchResultIcon searchResultIcon = SearchResultIcon.this;
                BitmapInfo bitmapInfo3 = bitmapInfo;
                LauncherAppState launcherAppState2 = launcherAppState;
                C0649g1 c0649g12 = c0649g1;
                boolean z5 = z4;
                Bundle bundle = u4;
                boolean z6 = u5;
                E1 e12 = SearchResultIcon.f6722D;
                LauncherIcons obtain = LauncherIcons.obtain(searchResultIcon.getContext());
                if (bitmapInfo3 != null) {
                    bitmapInfo2 = null;
                } else {
                    try {
                        bitmapInfo3 = SearchResultIcon.t(launcherAppState2, searchResultIcon.f6741o);
                        if (!c0649g12.u(16) || (charSequence = c0649g12.title) == null) {
                            bitmapInfo2 = bitmapInfo3;
                        } else {
                            String charSequence2 = charSequence.toString();
                            BitmapInfo createIconBitmap = obtain.createIconBitmap(bitmapInfo3.color, charSequence2.substring(0, charSequence2.offsetByCodePoints(0, 1)));
                            bitmapInfo2 = bitmapInfo3;
                            bitmapInfo3 = createIconBitmap;
                        }
                    } catch (Throwable th) {
                        try {
                            obtain.recycle();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (z5) {
                    try {
                        bitmapInfo3 = bitmapInfo3.withBadgeInfo(obtain.createBadgedIconBitmap(new IconProvider(launcherAppState2.getContext()).getIcon(searchResultIcon.getContext().getPackageManager().getActivityInfo(new ComponentName(searchResultIcon.f6741o.getPackageName(), bundle.getString("class")), 0)), null));
                    } catch (PackageManager.NameNotFoundException unused) {
                        Log.d("SearchResultIcon", "Unable to find resource from PackageManager");
                    }
                } else if (z6 && bitmapInfo3 != bitmapInfo2) {
                    if (bitmapInfo2 == null) {
                        bitmapInfo2 = SearchResultIcon.t(launcherAppState2, searchResultIcon.f6741o);
                    }
                    bitmapInfo3 = bitmapInfo3.withBadgeInfo(bitmapInfo2);
                }
                obtain.recycle();
                return bitmapInfo3;
            }
        }, new I1(2, c0649g1, this));
    }

    public final Point q() {
        Point point = new Point();
        point.x = this.f6745s.x - r().x;
        point.y = this.f6745s.y - ((ActivityContext) this.f6730d.f7271d).getDeviceProfile().allAppsIconSizePx;
        return point;
    }

    public final Point r() {
        Point point = f6723E;
        int measuredHeight = getMeasuredHeight() / 2;
        point.x = measuredHeight;
        point.y = measuredHeight;
        if (Utilities.isRtl(getResources())) {
            point.x = getMeasuredWidth() - point.x;
        }
        return point;
    }

    @Override // com.android.launcher3.BubbleTextView
    public final void reset() {
        super.reset();
        setLayoutHorizontal(false);
        this.f6747u = false;
        this.f6733g = false;
        setHideBadge(false);
        boolean z4 = true;
        setIconVisible(true);
        int i4 = this.mDisplay;
        if (i4 != 7 && i4 != 6) {
            z4 = false;
        }
        setForceHideDot(z4);
        this.f6750x = null;
        this.f6751y = null;
        this.f6727A = null;
        SafeCloseable safeCloseable = this.f6739m;
        if (safeCloseable != null) {
            safeCloseable.close();
            this.f6739m = null;
        }
        C0695s0 c0695s0 = this.f6740n;
        if (c0695s0 != null) {
            c0695s0.close();
            this.f6740n = null;
        }
        this.f6728B = false;
    }

    public final OptionsPopupView.OptionItem s() {
        View.OnLongClickListener onLongClickListener;
        int i4;
        OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc oneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc = this.f6751y;
        if (oneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc == null) {
            return null;
        }
        int ordinal = oneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3 || this.f6727A == null) {
                    return null;
                }
                onLongClickListener = new View.OnLongClickListener(this) { // from class: com.google.android.apps.nexuslauncher.allapps.G1

                    /* renamed from: e  reason: collision with root package name */
                    public final /* synthetic */ SearchResultIcon f6567e;

                    {
                        this.f6567e = this;
                    }

                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        switch (r2) {
                            case 0:
                                SearchResultIcon searchResultIcon = this.f6567e;
                                C0719y0 c0719y0 = searchResultIcon.f6730d;
                                SearchTarget searchTarget = searchResultIcon.f6741o;
                                c0719y0.getClass();
                                String id = searchTarget.getId();
                                if (C1498f.e(searchTarget)) {
                                    Query g4 = D2.g(searchTarget);
                                    if (g4 == null) {
                                        Log.i("SearchSessionManager", "Delete target Failed. SearchTarget doesn't have a query");
                                    } else {
                                        Query query = new Query(g4.getInput(), g4.getTimestampMillis(), new Bundle(g4.getExtras()));
                                        query.getExtras().putString("deleted_target_id", id);
                                        SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2 = c0719y0.f7277j;
                                        LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
                                        g3 g3Var = c0719y0.f7284q;
                                        Objects.requireNonNull(g3Var);
                                        sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.d(query, null, looperExecutor, new C0632c0(g3Var, 1));
                                        c0719y0.z(query, new SearchTargetEvent.Builder(id, 9).build());
                                    }
                                } else {
                                    C0719y0.g().execute(new X(3, c0719y0, id));
                                }
                                return true;
                            case 1:
                                SearchResultIcon searchResultIcon2 = this.f6567e;
                                C0719y0 c0719y02 = searchResultIcon2.f6730d;
                                String str = searchResultIcon2.f6742p;
                                String str2 = searchResultIcon2.f6752z;
                                c0719y02.getClass();
                                C0719y0.g().execute(new RunnableC0672m0(c0719y02, str, str2, 2));
                                return true;
                            default:
                                SearchResultIcon searchResultIcon3 = this.f6567e;
                                C0719y0 c0719y03 = searchResultIcon3.f6730d;
                                String str3 = searchResultIcon3.f6727A;
                                if (str3 == null) {
                                    c0719y03.getClass();
                                    Log.e("SearchSessionManager", "Unable to show suggestion info - no URL!");
                                } else {
                                    c0719y03.f7282o.startActivity(new Intent("android.intent.action.VIEW").setFlags(268435456).setData(Uri.parse(str3)));
                                }
                                return true;
                        }
                    }
                };
                i4 = R.drawable.ic_info_no_shadow;
            } else if (this.f6742p == null) {
                return null;
            } else {
                onLongClickListener = new View.OnLongClickListener(this) { // from class: com.google.android.apps.nexuslauncher.allapps.G1

                    /* renamed from: e  reason: collision with root package name */
                    public final /* synthetic */ SearchResultIcon f6567e;

                    {
                        this.f6567e = this;
                    }

                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        switch (r2) {
                            case 0:
                                SearchResultIcon searchResultIcon = this.f6567e;
                                C0719y0 c0719y0 = searchResultIcon.f6730d;
                                SearchTarget searchTarget = searchResultIcon.f6741o;
                                c0719y0.getClass();
                                String id = searchTarget.getId();
                                if (C1498f.e(searchTarget)) {
                                    Query g4 = D2.g(searchTarget);
                                    if (g4 == null) {
                                        Log.i("SearchSessionManager", "Delete target Failed. SearchTarget doesn't have a query");
                                    } else {
                                        Query query = new Query(g4.getInput(), g4.getTimestampMillis(), new Bundle(g4.getExtras()));
                                        query.getExtras().putString("deleted_target_id", id);
                                        SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2 = c0719y0.f7277j;
                                        LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
                                        g3 g3Var = c0719y0.f7284q;
                                        Objects.requireNonNull(g3Var);
                                        sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.d(query, null, looperExecutor, new C0632c0(g3Var, 1));
                                        c0719y0.z(query, new SearchTargetEvent.Builder(id, 9).build());
                                    }
                                } else {
                                    C0719y0.g().execute(new X(3, c0719y0, id));
                                }
                                return true;
                            case 1:
                                SearchResultIcon searchResultIcon2 = this.f6567e;
                                C0719y0 c0719y02 = searchResultIcon2.f6730d;
                                String str = searchResultIcon2.f6742p;
                                String str2 = searchResultIcon2.f6752z;
                                c0719y02.getClass();
                                C0719y0.g().execute(new RunnableC0672m0(c0719y02, str, str2, 2));
                                return true;
                            default:
                                SearchResultIcon searchResultIcon3 = this.f6567e;
                                C0719y0 c0719y03 = searchResultIcon3.f6730d;
                                String str3 = searchResultIcon3.f6727A;
                                if (str3 == null) {
                                    c0719y03.getClass();
                                    Log.e("SearchSessionManager", "Unable to show suggestion info - no URL!");
                                } else {
                                    c0719y03.f7282o.startActivity(new Intent("android.intent.action.VIEW").setFlags(268435456).setData(Uri.parse(str3)));
                                }
                                return true;
                        }
                    }
                };
                i4 = R.drawable.ic_flag;
            }
        } else if (this.f6742p == null) {
            return null;
        } else {
            onLongClickListener = new View.OnLongClickListener(this) { // from class: com.google.android.apps.nexuslauncher.allapps.G1

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ SearchResultIcon f6567e;

                {
                    this.f6567e = this;
                }

                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    switch (r2) {
                        case 0:
                            SearchResultIcon searchResultIcon = this.f6567e;
                            C0719y0 c0719y0 = searchResultIcon.f6730d;
                            SearchTarget searchTarget = searchResultIcon.f6741o;
                            c0719y0.getClass();
                            String id = searchTarget.getId();
                            if (C1498f.e(searchTarget)) {
                                Query g4 = D2.g(searchTarget);
                                if (g4 == null) {
                                    Log.i("SearchSessionManager", "Delete target Failed. SearchTarget doesn't have a query");
                                } else {
                                    Query query = new Query(g4.getInput(), g4.getTimestampMillis(), new Bundle(g4.getExtras()));
                                    query.getExtras().putString("deleted_target_id", id);
                                    SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2 = c0719y0.f7277j;
                                    LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
                                    g3 g3Var = c0719y0.f7284q;
                                    Objects.requireNonNull(g3Var);
                                    sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.d(query, null, looperExecutor, new C0632c0(g3Var, 1));
                                    c0719y0.z(query, new SearchTargetEvent.Builder(id, 9).build());
                                }
                            } else {
                                C0719y0.g().execute(new X(3, c0719y0, id));
                            }
                            return true;
                        case 1:
                            SearchResultIcon searchResultIcon2 = this.f6567e;
                            C0719y0 c0719y02 = searchResultIcon2.f6730d;
                            String str = searchResultIcon2.f6742p;
                            String str2 = searchResultIcon2.f6752z;
                            c0719y02.getClass();
                            C0719y0.g().execute(new RunnableC0672m0(c0719y02, str, str2, 2));
                            return true;
                        default:
                            SearchResultIcon searchResultIcon3 = this.f6567e;
                            C0719y0 c0719y03 = searchResultIcon3.f6730d;
                            String str3 = searchResultIcon3.f6727A;
                            if (str3 == null) {
                                c0719y03.getClass();
                                Log.e("SearchSessionManager", "Unable to show suggestion info - no URL!");
                            } else {
                                c0719y03.f7282o.startActivity(new Intent("android.intent.action.VIEW").setFlags(268435456).setData(Uri.parse(str3)));
                            }
                            return true;
                    }
                }
            };
            i4 = R.drawable.ic_delete;
        }
        return new OptionsPopupView.OptionItem(this.f6750x, this.f6730d.getDrawable(i4), StatsLogManager.LauncherEvent.IGNORE, onLongClickListener);
    }

    @Override // com.android.launcher3.BubbleTextView
    public final void setItemInfo(ItemInfoWithIcon itemInfoWithIcon) {
        setTag(itemInfoWithIcon);
        this.f6732f.accept(itemInfoWithIcon);
    }

    @Override // com.android.systemui.animation.t
    public final void setShouldBlockVisibilityChanges(boolean z4) {
        this.f6729C.setShouldBlockVisibilityChanges(z4);
    }

    @Override // android.view.View
    public final void setVisibility(int i4) {
        this.f6729C.i(i4);
    }

    @Override // com.android.launcher3.BubbleTextView
    public final boolean shouldUseTheme() {
        return this.f6741o.getParentId() != null && this.f6743q == 4;
    }

    @Override // com.android.launcher3.BubbleTextView
    public final boolean shouldUseTwoLine() {
        return this.f6735i && FeatureFlags.ENABLE_TWOLINE_DEVICESEARCH.get();
    }

    @Override // com.android.launcher3.BubbleTextView
    public final DragOptions.PreDragCondition startLongPressAction() {
        OptionsPopupView w4 = w();
        if (w4 == null) {
            Point point = this.f6745s;
            return !(point.x != 0 || point.y != 0) ? super.startLongPressAction() : new P1(this.f6730d.getResources().getDimension(R.dimen.deep_shortcuts_start_drag_threshold), null, q());
        }
        return new P1(this.f6730d.getResources().getDimension(R.dimen.deep_shortcuts_start_drag_threshold), w4, q());
    }

    public final Bundle u() {
        SearchTarget searchTarget = this.f6741o;
        if (searchTarget == null) {
            f6724F.getClass();
            return new Bundle();
        }
        return (Bundle) Objects.requireNonNullElseGet(searchTarget.getExtras(), f6724F);
    }

    public final BitmapInfo v(Icon icon, C0649g1 c0649g1) {
        Drawable loadDrawable = icon.loadDrawable(this.f6730d);
        if (loadDrawable == null) {
            return null;
        }
        BaseIconFactory.IconOptions iconOptions = new BaseIconFactory.IconOptions();
        iconOptions.setUser(c0649g1.user);
        iconOptions.setShrinkNonAdaptiveIcons();
        if (icon.getType() == 2 && (loadDrawable instanceof AdaptiveIconDrawable) && this.f6730d.getPackageName().equals(icon.getResPackage())) {
            loadDrawable = loadDrawable.mutate();
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) loadDrawable;
            adaptiveIconDrawable.getBackground().setTint(GraphicsUtils.getAttrColor(17956914, this.f6730d));
            adaptiveIconDrawable.getForeground().setTint(GraphicsUtils.getAttrColor(16842806, this.f6730d));
            iconOptions.setBitmapGenerationMode();
            iconOptions.setExtractedColor(GraphicsUtils.getAttrColor(16843829, this.f6730d));
        }
        LauncherIcons obtain = LauncherIcons.obtain(this.f6730d);
        try {
            BitmapInfo createBadgedIconBitmap = obtain.createBadgedIconBitmap(loadDrawable, iconOptions);
            obtain.recycle();
            return createBadgedIconBitmap;
        } catch (Throwable th) {
            try {
                obtain.recycle();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final OptionsPopupView w() {
        OptionsPopupView.OptionItem s4 = s();
        if (s4 == null) {
            return null;
        }
        Rect rect = new Rect();
        ((ActivityContext) this.f6730d.f7271d).getDragLayer().getDescendantRectRelativeToSelf(this, rect);
        RectF rectF = new RectF();
        float f4 = r().x + rect.left;
        rectF.right = f4;
        rectF.left = f4;
        float f5 = r().y + rect.top;
        rectF.bottom = f5;
        rectF.top = f5;
        return OptionsPopupView.show((ActivityContext) this.f6730d.f7271d, rectF, Collections.singletonList(s4), true);
    }

    public final void x(int i4, int i5, int i6) {
        getLayoutParams().width = i4;
        getLayoutParams().height = i4;
        int i7 = (i4 - i5) / 2;
        setPadding(i7, i7, i7, i7);
        ((ViewGroup.MarginLayoutParams) getLayoutParams()).setMarginStart(i6 - i7);
    }

    public SearchResultIcon(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchResultIcon(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f6732f = f6722D;
        this.f6745s = new Point();
        Paint paint = new Paint(3);
        this.f6746t = paint;
        this.f6729C = new com.android.systemui.animation.u(this, new m3.l() { // from class: com.google.android.apps.nexuslauncher.allapps.D1
            @Override // m3.l
            public final Object invoke(Object obj) {
                return SearchResultIcon.l(SearchResultIcon.this, (Integer) obj);
            }
        });
        this.f6730d = C0719y0.f(context);
        paint.setColor(context.getApplicationContext().getColor(R.color.shortcut_halo));
        this.f6748v = getResources().getDimensionPixelSize(R.dimen.search_row_icon_size);
        this.f6749w = getResources().getDimensionPixelSize(R.dimen.search_result_margin);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SearchResultIcon, i4, 0);
        boolean z4 = obtainStyledAttributes.getBoolean(0, false);
        this.f6731e = z4;
        obtainStyledAttributes.recycle();
        if (z4) {
            setOnClickListener(this);
        }
    }
}
