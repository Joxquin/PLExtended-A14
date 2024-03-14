package com.google.android.apps.nexuslauncher.allapps;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.Insettable;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.SearchUiManager;
import com.android.launcher3.anim.KeyboardInsetAnimationCallback;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtomExtensions$DeviceSearchResultContainer;
import com.android.launcher3.logger.LauncherAtomExtensions$ExtendedContainers;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.search.SearchCallback;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.OptionsPopupView;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.search.SearchEditText;
import com.google.android.apps.nexuslauncher.search.TypeAheadSearchInputView;
import java.util.ArrayList;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class DeviceSearchInputView extends FrameLayout implements SearchCallback, SearchUiManager, Insettable, ValueAnimator.AnimatorUpdateListener, KeyboardInsetAnimationCallback.KeyboardInsetListener {

    /* renamed from: s  reason: collision with root package name */
    public static final int[] f6524s = {16842919, 16842910};

    /* renamed from: d  reason: collision with root package name */
    public final ValueAnimator f6525d;

    /* renamed from: e  reason: collision with root package name */
    public final C0719y0 f6526e;

    /* renamed from: f  reason: collision with root package name */
    public final ActivityContext f6527f;

    /* renamed from: g  reason: collision with root package name */
    public final Rect f6528g;

    /* renamed from: h  reason: collision with root package name */
    public final Rect f6529h;

    /* renamed from: i  reason: collision with root package name */
    public TypeAheadSearchInputView f6530i;

    /* renamed from: j  reason: collision with root package name */
    public ImageButton f6531j;

    /* renamed from: k  reason: collision with root package name */
    public final OptionsPopupView.OptionItem f6532k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f6533l;

    /* renamed from: m  reason: collision with root package name */
    public float f6534m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f6535n;

    /* renamed from: o  reason: collision with root package name */
    public String f6536o;

    /* renamed from: p  reason: collision with root package name */
    public int f6537p;

    /* renamed from: q  reason: collision with root package name */
    public int f6538q;

    /* renamed from: r  reason: collision with root package name */
    public Drawable f6539r;

    public DeviceSearchInputView(Context context) {
        this(context, null);
    }

    public final void a() {
        Drawable drawable = this.f6539r;
        if (drawable == null) {
            return;
        }
        drawable.setState(f6524s);
        setBackgroundVisibility(1.0f, false);
        getContext().getMainThreadHandler().postDelayed(new RunnableC0694s(this, 1), 300L);
    }

    public final void b() {
        if (this.f6530i.f7595m.getText().length() == 0) {
            this.f6531j.setImageResource(R.drawable.ic_more_vert);
            this.f6531j.setContentDescription(getResources().getString(R.string.search_input_action_show_preferences));
            return;
        }
        this.f6531j.setImageResource(R.drawable.ic_remove_no_shadow);
        this.f6531j.setContentDescription(getResources().getString(R.string.search_input_action_clear_results));
    }

    @Override // com.android.launcher3.search.SearchCallback
    public final void clearSearchResult() {
        this.f6530i.f7595m.clearSearchResult();
        if (this.f6537p > 0 && !Utilities.isRunningInTestHarness()) {
            StatsLogManager.StatsLogger logger = this.f6527f.getStatsLogManager().logger();
            LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
            LauncherAtomExtensions$ExtendedContainers.Builder newBuilder2 = LauncherAtomExtensions$ExtendedContainers.newBuilder();
            LauncherAtomExtensions$DeviceSearchResultContainer.Builder newBuilder3 = LauncherAtomExtensions$DeviceSearchResultContainer.newBuilder();
            newBuilder3.setQueryLength$1(this.f6538q);
            newBuilder2.setDeviceSearchResultContainer(newBuilder3);
            newBuilder.setExtendedContainers(newBuilder2);
            logger.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_SEARCH_SESSION_EXIT);
        }
        this.f6536o = "";
        this.f6537p = 0;
        this.f6538q = 0;
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final boolean getBackgroundVisibility() {
        return this.f6533l;
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final ExtendedEditText getEditText() {
        return this.f6530i.f7595m;
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void initializeSearch(ActivityAllAppsContainerView activityAllAppsContainerView) {
        SearchEditText searchEditText = this.f6530i.f7595m;
        C0687q c0687q = new C0687q(this.f6526e);
        searchEditText.f7583v = activityAllAppsContainerView;
        searchEditText.f7566e = c0687q;
        searchEditText.f7567f = this;
        searchEditText.f7577p.initialize(c0687q, searchEditText, (ActivityContext) ActivityContext.lookupContext(searchEditText.getContext()), this);
        searchEditText.setOnBackKeyListener(searchEditText.f7584w);
    }

    @Override // android.view.View
    public final boolean isEnabled() {
        return super.isEnabled() && getVisibility() == 0 && !this.f6535n;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Drawable drawable = this.f6539r;
        if (drawable == null) {
            return;
        }
        float animatedFraction = valueAnimator.getAnimatedFraction();
        float f4 = this.f6534m;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        drawable.setAlpha((int) ((((f4 - 0.0f) * animatedFraction) + 0.0f) * 255.0f));
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_FLOATING_SEARCH_BAR;
        if (booleanFlag.get()) {
            if (windowInsets.isVisible(WindowInsets.Type.ime())) {
                this.f6529h.set(windowInsets.getInsets(WindowInsets.Type.ime()).toRect());
            } else {
                this.f6529h.setEmpty();
            }
            if (booleanFlag.get()) {
                int i4 = this.f6529h.bottom;
                int i5 = -i4;
                if (i4 == 0) {
                    i5 -= this.f6528g.bottom;
                }
                setTranslationY(i5);
            }
            return super.onApplyWindowInsets(windowInsets);
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        TypeAheadSearchInputView typeAheadSearchInputView = (TypeAheadSearchInputView) findViewById(R.id.typeahead_input);
        this.f6530i = typeAheadSearchInputView;
        typeAheadSearchInputView.f7595m.f6483d = new RunnableC0694s(this, 0);
        this.f6539r = findViewById(R.id.search_wrapper).getBackground();
        this.f6530i.f7599q = new Consumer() { // from class: com.google.android.apps.nexuslauncher.allapps.t
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DeviceSearchInputView deviceSearchInputView = DeviceSearchInputView.this;
                Editable editable = (Editable) obj;
                int[] iArr = DeviceSearchInputView.f6524s;
                deviceSearchInputView.b();
            }
        };
        ImageButton imageButton = (ImageButton) findViewById(R.id.action_btn);
        this.f6531j = imageButton;
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.apps.nexuslauncher.allapps.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final DeviceSearchInputView deviceSearchInputView = DeviceSearchInputView.this;
                if (deviceSearchInputView.f6530i.f7595m.getText().length() > 0) {
                    deviceSearchInputView.f6530i.f7595m.setText("");
                    deviceSearchInputView.f6527f.getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_CLEAR_SEARCHBOX_TAP);
                    deviceSearchInputView.f6538q = 0;
                    return;
                }
                final boolean m4 = deviceSearchInputView.f6526e.m();
                RectF rectF = new RectF(Utilities.getViewBounds(view));
                float centerX = rectF.centerX();
                rectF.right = centerX;
                rectF.left = centerX;
                ArrayList arrayList = new ArrayList();
                int i4 = m4 ? R.drawable.ic_hide_keyboard : R.drawable.ic_pin_keyboard;
                arrayList.add(new OptionsPopupView.OptionItem(deviceSearchInputView.getContext(), m4 ? R.string.keyboard_hide : R.string.keyboard_show, i4, m4 ? NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_HIDE_KEYBOARD_TAP_OR_LONG_PRESS : NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_SHOW_KEYBOARD_TAP_OR_LONG_PRESS, new View.OnLongClickListener() { // from class: com.google.android.apps.nexuslauncher.allapps.v
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view2) {
                        DeviceSearchInputView deviceSearchInputView2 = DeviceSearchInputView.this;
                        boolean z4 = m4;
                        if (z4) {
                            deviceSearchInputView2.f6530i.f7595m.hideKeyboard();
                        } else {
                            deviceSearchInputView2.f6530i.f7595m.showKeyboard(true);
                            deviceSearchInputView2.a();
                        }
                        LauncherPrefs.getPrefs(deviceSearchInputView2.getContext()).edit().putBoolean("pref_search_show_keyboard", !z4).apply();
                        return true;
                    }
                }));
                arrayList.add(deviceSearchInputView.f6532k);
                OptionsPopupView.show(deviceSearchInputView.f6527f, rectF, arrayList, true);
            }
        });
        b();
        if (FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get()) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
            layoutParams.removeRule(10);
            layoutParams.addRule(12);
            setWindowInsetsAnimationCallback(new KeyboardInsetAnimationCallback(this));
        }
    }

    @Override // com.android.launcher3.search.SearchCallback
    public final void onSearchResult(String str, ArrayList arrayList) {
        this.f6530i.f7595m.onSearchResult(str, arrayList, 2);
        int length = str == null ? 0 : str.length();
        int size = arrayList != null ? arrayList.size() : 0;
        if (this.f6537p == 0 && size > 0) {
            this.f6527f.getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_SEARCH_SESSION_ENTRY);
            this.f6537p = size;
        }
        if (length > this.f6538q) {
            this.f6538q = length;
        }
        if (arrayList != null && str != null && !this.f6536o.startsWith(str)) {
            this.f6526e.H(arrayList);
        }
        this.f6536o = str;
    }

    @Override // com.android.launcher3.anim.KeyboardInsetAnimationCallback.KeyboardInsetListener
    public final void onTranslationEnd() {
        this.f6535n = false;
    }

    @Override // com.android.launcher3.anim.KeyboardInsetAnimationCallback.KeyboardInsetListener
    public final void onTranslationStart() {
        this.f6535n = true;
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void resetSearch() {
        this.f6530i.f7595m.reset();
        this.f6530i.beforeTextChanged("", 0, 0, 0);
        clearSearchResult();
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void setBackgroundVisibility(float f4, boolean z4) {
        if (FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get()) {
            return;
        }
        if (this.f6533l != z4) {
            this.f6533l = z4;
            this.f6534m = f4;
            if (z4) {
                this.f6525d.start();
            } else {
                this.f6525d.reverse();
            }
        } else if (this.f6534m == f4 || this.f6525d.isRunning() || !z4) {
        } else {
            this.f6534m = f4;
            this.f6525d.setCurrentFraction(f4);
            onAnimationUpdate(this.f6525d);
        }
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        this.f6528g.set(rect);
        FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_FLOATING_SEARCH_BAR;
        if (booleanFlag.get()) {
            int i4 = this.f6529h.bottom;
            int i5 = -i4;
            if (i4 == 0) {
                i5 -= this.f6528g.bottom;
            }
            setTranslationY(i5);
        }
        if (!booleanFlag.get()) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
            Resources resources = getResources();
            if (this.f6527f.getDeviceProfile().isTablet) {
                marginLayoutParams.topMargin = resources.getDimensionPixelOffset(R.dimen.bottom_sheet_handle_area_height);
            } else {
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.qsb_margin_top_adjusting);
                marginLayoutParams.topMargin = Math.max(0, (rect.top - dimensionPixelSize) + resources.getDimensionPixelSize(R.dimen.all_apps_search_vertical_offset));
            }
        }
        int i6 = this.f6527f.getDeviceProfile().allAppsLeftRightPadding;
        setPadding(i6, getPaddingTop(), i6, getPaddingBottom());
        requestLayout();
    }

    public DeviceSearchInputView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DeviceSearchInputView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f6525d = ofFloat;
        this.f6528g = new Rect();
        this.f6529h = new Rect();
        this.f6534m = 1.0f;
        this.f6536o = "";
        C0719y0 f4 = C0719y0.f(context);
        this.f6526e = f4;
        this.f6527f = (ActivityContext) f4.f7271d;
        ofFloat.setDuration(300L).setInterpolator(y0.e.f12962z);
        ofFloat.addUpdateListener(this);
        this.f6532k = new OptionsPopupView.OptionItem(getContext(), R.string.hotseat_qsb_preferences, R.drawable.ic_setting, NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_PREFERENCE_TAP_OR_LONG_PRESS, new View.OnLongClickListener() { // from class: com.google.android.apps.nexuslauncher.allapps.r
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                DeviceSearchInputView deviceSearchInputView = DeviceSearchInputView.this;
                int[] iArr = DeviceSearchInputView.f6524s;
                C0716x1.b(deviceSearchInputView.getContext(), false);
                return true;
            }
        });
    }
}
