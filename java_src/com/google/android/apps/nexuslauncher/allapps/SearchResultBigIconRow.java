package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchAction;
import android.app.search.SearchTarget;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BubbleTextHolder;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Supplier;
import k0.C1198m;
import k0.InterfaceC1180E;
/* loaded from: classes.dex */
public class SearchResultBigIconRow extends com.android.systemui.animation.view.a implements A2, BubbleTextHolder {

    /* renamed from: r  reason: collision with root package name */
    public static final /* synthetic */ int f6708r = 0;

    /* renamed from: e  reason: collision with root package name */
    public final C0719y0 f6709e;

    /* renamed from: f  reason: collision with root package name */
    public final SearchResultIcon[] f6710f;

    /* renamed from: g  reason: collision with root package name */
    public final LauncherAppState f6711g;

    /* renamed from: h  reason: collision with root package name */
    public final int f6712h;

    /* renamed from: i  reason: collision with root package name */
    public SearchResultIcon f6713i;

    /* renamed from: j  reason: collision with root package name */
    public TextView f6714j;

    /* renamed from: k  reason: collision with root package name */
    public TextView f6715k;

    /* renamed from: l  reason: collision with root package name */
    public HandlerRunnable f6716l;

    /* renamed from: m  reason: collision with root package name */
    public final int f6717m;

    /* renamed from: n  reason: collision with root package name */
    public final int f6718n;

    /* renamed from: o  reason: collision with root package name */
    public final int f6719o;

    /* renamed from: p  reason: collision with root package name */
    public com.airbnb.lottie.a f6720p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f6721q;

    public SearchResultBigIconRow(Context context) {
        this(context, null, 0);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final boolean d() {
        return this.f6713i.d();
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final void e(C0653h1 c0653h1) {
        Bundle extras;
        HandlerRunnable handlerRunnable = this.f6716l;
        if (handlerRunnable != null) {
            handlerRunnable.cancel();
            this.f6716l = null;
        }
        SearchResultIcon searchResultIcon = this.f6713i;
        SearchTarget searchTarget = c0653h1.f7080a;
        searchResultIcon.o(searchTarget);
        if (this.f6713i.getVisibility() == 4) {
            View findViewById = findViewById(R.id.text_rows);
            int i4 = this.f6712h / 2;
            findViewById.setPadding(i4, 0, i4, 0);
        } else {
            View findViewById2 = findViewById(R.id.text_rows);
            int i5 = this.f6712h;
            findViewById2.setPadding(i5, 0, i5, 0);
        }
        if ("big_icon_medium_row".equals(searchTarget.getLayoutType())) {
            setMinimumHeight(getResources().getDimensionPixelSize(R.dimen.search_result_row_medium_height));
            int i6 = this.f6718n;
            int i7 = this.f6719o;
            setPaddingRelative(i6, i7, 0, i7);
        } else {
            setMinimumHeight(getResources().getDimensionPixelSize(R.dimen.search_result_row_height));
            int i8 = this.f6718n;
            int i9 = this.f6717m;
            setPaddingRelative(i8, i9, 0, i9);
        }
        k(null);
        SearchAction searchAction = searchTarget.getSearchAction();
        if (searchTarget.getShortcutInfo() != null) {
            ShortcutInfo shortcutInfo = searchTarget.getShortcutInfo();
            final PackageItemInfo packageItemInfo = new PackageItemInfo(-1, shortcutInfo.getUserHandle(), shortcutInfo.getPackage());
            k(packageItemInfo.title);
            LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
            this.f6716l = new HandlerRunnable(looperExecutor.getHandler(), new Supplier() { // from class: com.google.android.apps.nexuslauncher.allapps.B1
                @Override // java.util.function.Supplier
                public final Object get() {
                    SearchResultBigIconRow searchResultBigIconRow = SearchResultBigIconRow.this;
                    PackageItemInfo packageItemInfo2 = packageItemInfo;
                    searchResultBigIconRow.f6711g.getIconCache().getTitleAndIconForApp(packageItemInfo2, true);
                    return packageItemInfo2.title;
                }
            }, Executors.MAIN_EXECUTOR, new A1(this, 1));
            Utilities.postAsyncCallback(looperExecutor.getHandler(), this.f6716l);
        } else if (searchAction != null) {
            k(searchAction.getSubtitle());
        }
        SearchResultIcon[] searchResultIconArr = this.f6710f;
        List list = c0653h1.f7081b;
        A2.b(searchResultIconArr, list);
        View findViewById3 = findViewById(R.id.settings_search_button_container);
        ImageButton imageButton = (ImageButton) findViewById(R.id.settings_search_button);
        if (((ArrayList) list).size() == 0 && searchTarget.getPackageName().equals("com.android.settings") && searchTarget.getResultType() == 1) {
            findViewById3.setVisibility(0);
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.apps.nexuslauncher.allapps.C1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchResultBigIconRow searchResultBigIconRow = SearchResultBigIconRow.this;
                    ((ActivityContext) searchResultBigIconRow.f6709e.f7271d).getStatsLogManager().logger().withItemInfo((ItemInfo) searchResultBigIconRow.f6713i.getTag()).log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCHINAPP_LAUNCH);
                    searchResultBigIconRow.getContext().startActivity(new Intent("android.settings.APP_SEARCH_SETTINGS"));
                }
            });
        } else {
            findViewById3.setVisibility(8);
            imageButton.setOnClickListener(null);
        }
        h(c0653h1.f7083d);
        if (!com.google.android.apps.nexuslauncher.c.f7330s.get() || searchAction == null || (extras = searchAction.getExtras()) == null) {
            return;
        }
        boolean z4 = extras.getBoolean("show_bday_animation", false);
        this.f6721q = z4;
        if (z4) {
            setForeground(this.f6720p);
        }
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final CharSequence f() {
        return this.f6713i.getText();
    }

    @Override // com.android.launcher3.views.BubbleTextHolder
    public final BubbleTextView getBubbleText() {
        return this.f6713i;
    }

    public void initLottieDrawable() {
        if (com.google.android.apps.nexuslauncher.c.f7330s.get()) {
            this.f6720p = new com.airbnb.lottie.a();
            Context context = getContext();
            String h4 = k0.s.h(R.raw.birthday_reminder, context);
            k0.K a4 = k0.s.a(h4, new k0.r(new WeakReference(context), context.getApplicationContext(), R.raw.birthday_reminder, h4));
            final com.airbnb.lottie.a aVar = this.f6720p;
            Objects.requireNonNull(aVar);
            a4.a(new InterfaceC1180E() { // from class: com.google.android.apps.nexuslauncher.allapps.z1
                @Override // k0.InterfaceC1180E
                public final void a(Object obj) {
                    com.airbnb.lottie.a.this.n((C1198m) obj);
                }
            });
        }
    }

    public final void k(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence) || D2.h(this.f6713i.f6744r, 1)) {
            this.f6715k.setVisibility(8);
            return;
        }
        this.f6715k.setText(charSequence);
        this.f6715k.setVisibility(0);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final boolean n() {
        this.f6713i.f6728B = true;
        return performClick();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (com.google.android.apps.nexuslauncher.c.f7330s.get() && this.f6721q) {
            this.f6720p.setCallback(this);
            Rect rect = new Rect();
            getBoundsOnScreen(rect);
            this.f6720p.setBounds(rect);
            this.f6720p.start();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (com.google.android.apps.nexuslauncher.c.f7330s.get() && this.f6721q) {
            this.f6720p.stop();
            this.f6720p.setCallback(null);
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        SearchResultIcon searchResultIcon = (SearchResultIcon) findViewById(R.id.icon);
        this.f6713i = searchResultIcon;
        searchResultIcon.setImportantForAccessibility(2);
        SearchResultIcon searchResultIcon2 = this.f6713i;
        searchResultIcon2.f6732f = new A1(this, 0);
        int iconSize = searchResultIcon2.getIconSize();
        this.f6714j = (TextView) findViewById(R.id.title);
        TextView textView = (TextView) findViewById(R.id.subtitle);
        this.f6715k = textView;
        textView.setVisibility(8);
        this.f6713i.getLayoutParams().height = iconSize;
        this.f6713i.getLayoutParams().width = iconSize;
        this.f6713i.setTextVisibility(false);
        this.f6710f[0] = (SearchResultIcon) findViewById(R.id.shortcut_0);
        this.f6710f[1] = (SearchResultIcon) findViewById(R.id.shortcut_1);
        this.f6710f[2] = (SearchResultIcon) findViewById(R.id.shortcut_2);
        setOnClickListener(this.f6713i);
        setOnLongClickListener(this.f6713i);
        setAccessibilityDelegate(((ActivityContext) this.f6709e.f7271d).getAccessibilityDelegate());
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0 || action == 2) {
            this.f6713i.f6745s.set((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        return super.onTouchEvent(motionEvent);
    }

    public SearchResultBigIconRow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchResultBigIconRow(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f6710f = new SearchResultIcon[3];
        this.f6721q = false;
        this.f6709e = C0719y0.f(context);
        this.f6711g = LauncherAppState.getInstance(getContext());
        this.f6712h = getResources().getDimensionPixelSize(R.dimen.search_result_padding);
        this.f6717m = getResources().getDimensionPixelSize(R.dimen.search_result_padding);
        this.f6719o = getResources().getDimensionPixelSize(R.dimen.search_result_big_icon_padding);
        this.f6718n = getResources().getDimensionPixelSize(R.dimen.search_result_margin);
        initLottieDrawable();
    }
}
