package com.google.android.apps.nexuslauncher.allapps;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.RippleDrawable;
import android.os.SystemClock;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.IntProperty;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.anim.KeyboardInsetAnimationCallback;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtomExtensions$DeviceSearchResultContainer;
import com.android.launcher3.logger.LauncherAtomExtensions$ExtendedContainers;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.search.SearchCallback;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.OptionsPopupView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.apps.nexuslauncher.allapps.UniversalSearchInputView;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.qsb.AssistantIconView;
import com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget;
import com.google.android.apps.nexuslauncher.search.SearchEditText;
import com.google.android.apps.nexuslauncher.search.TypeAheadSearchInputView;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class UniversalSearchInputView extends W1.p implements KeyboardInsetAnimationCallback.KeyboardInsetListener, SearchCallback, TextWatcher, f3 {

    /* renamed from: f0  reason: collision with root package name */
    public static final /* synthetic */ int f6900f0 = 0;

    /* renamed from: A  reason: collision with root package name */
    public View f6901A;

    /* renamed from: B  reason: collision with root package name */
    public View f6902B;

    /* renamed from: C  reason: collision with root package name */
    public View f6903C;

    /* renamed from: D  reason: collision with root package name */
    public String f6904D;

    /* renamed from: E  reason: collision with root package name */
    public int f6905E;

    /* renamed from: F  reason: collision with root package name */
    public int f6906F;

    /* renamed from: G  reason: collision with root package name */
    public Animator f6907G;

    /* renamed from: H  reason: collision with root package name */
    public boolean f6908H;

    /* renamed from: I  reason: collision with root package name */
    public boolean f6909I;

    /* renamed from: J  reason: collision with root package name */
    public boolean f6910J;

    /* renamed from: K  reason: collision with root package name */
    public boolean f6911K;

    /* renamed from: L  reason: collision with root package name */
    public boolean f6912L;

    /* renamed from: M  reason: collision with root package name */
    public boolean f6913M;

    /* renamed from: N  reason: collision with root package name */
    public int f6914N;

    /* renamed from: O  reason: collision with root package name */
    public int f6915O;

    /* renamed from: P  reason: collision with root package name */
    public int f6916P;

    /* renamed from: Q  reason: collision with root package name */
    public int f6917Q;

    /* renamed from: R  reason: collision with root package name */
    public int f6918R;

    /* renamed from: S  reason: collision with root package name */
    public int f6919S;

    /* renamed from: T  reason: collision with root package name */
    public int f6920T;

    /* renamed from: U  reason: collision with root package name */
    public int f6921U;

    /* renamed from: V  reason: collision with root package name */
    public int f6922V;

    /* renamed from: W  reason: collision with root package name */
    public int f6923W;

    /* renamed from: a0  reason: collision with root package name */
    public int f6924a0;

    /* renamed from: b0  reason: collision with root package name */
    public int f6925b0;

    /* renamed from: c0  reason: collision with root package name */
    public OptionsPopupView f6926c0;

    /* renamed from: d0  reason: collision with root package name */
    public View f6927d0;

    /* renamed from: e0  reason: collision with root package name */
    public int f6928e0;

    /* renamed from: j  reason: collision with root package name */
    public final d3 f6929j;

    /* renamed from: k  reason: collision with root package name */
    public final Y2 f6930k;

    /* renamed from: l  reason: collision with root package name */
    public final Z2 f6931l;

    /* renamed from: m  reason: collision with root package name */
    public C0719y0 f6932m;
    QsbState mState;

    /* renamed from: n  reason: collision with root package name */
    public final OptionsPopupView.OptionItem f6933n;

    /* renamed from: o  reason: collision with root package name */
    public KeyboardInsetAnimationCallback f6934o;

    /* renamed from: p  reason: collision with root package name */
    public final Rect f6935p;

    /* renamed from: q  reason: collision with root package name */
    public float f6936q;

    /* renamed from: r  reason: collision with root package name */
    public int f6937r;

    /* renamed from: s  reason: collision with root package name */
    public int f6938s;

    /* renamed from: t  reason: collision with root package name */
    public int f6939t;

    /* renamed from: u  reason: collision with root package name */
    public float f6940u;

    /* renamed from: v  reason: collision with root package name */
    public View f6941v;

    /* renamed from: w  reason: collision with root package name */
    public TypeAheadSearchInputView f6942w;

    /* renamed from: x  reason: collision with root package name */
    public TextView f6943x;

    /* renamed from: y  reason: collision with root package name */
    public Rect f6944y;

    /* renamed from: z  reason: collision with root package name */
    public ImageView f6945z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum QsbState {
        ZERO_UNFOCUSED(false),
        ZERO_FOCUSED(true),
        PREFIX(true);
        
        public final boolean isExpanded;

        QsbState(boolean z4) {
            this.isExpanded = z4;
        }
    }

    public UniversalSearchInputView(Context context) {
        this(context, null, 0);
    }

    private void f() {
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.search_box_background_offset);
        int k4 = k();
        this.f6914N = k4;
        this.f6915O = k4 - dimensionPixelOffset;
        int j4 = j();
        this.f6916P = j4;
        this.f6917Q = j4 - dimensionPixelOffset;
        if (this.f6911K) {
            int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.search_box_pill_offset);
            this.f6914N += dimensionPixelOffset2;
            this.f6916P += dimensionPixelOffset2;
        }
        n(this.mState);
    }

    public static PropertyValuesHolder g(IntProperty intProperty, int i4, int i5, int i6) {
        PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(intProperty, Keyframe.ofInt(0.0f, i4), Keyframe.ofInt(0.3030303f, i5), Keyframe.ofInt(1.0f, i6));
        ofKeyframe.setEvaluator(new ArgbEvaluator());
        return ofKeyframe;
    }

    public static int i(int i4, Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i4, typedValue, true)) {
            int i5 = typedValue.type;
            if (28 <= i5 && i5 <= 31) {
                return typedValue.data;
            }
            if (i5 == 3) {
                int i6 = typedValue.resourceId;
                Object obj = B.c.f105a;
                return context.getColor(i6);
            }
        }
        throw new IllegalArgumentException("Theme is missing expected color " + context.getResources().getResourceName(i4) + " (" + i4 + ") references a missing resource.");
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.f3
    public final void a() {
        QsbState qsbState = this.mState;
        if ((qsbState == QsbState.ZERO_UNFOCUSED || qsbState == QsbState.ZERO_FOCUSED) && this.f6913M) {
            o();
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        if (editable.length() > 0) {
            this.f6913M = true;
            this.f6932m.B();
        }
        OptionsPopupView optionsPopupView = this.f6926c0;
        if (optionsPopupView != null && optionsPopupView.isOpen()) {
            this.f6926c0.close(true);
        }
        updateState();
    }

    @Override // W1.p
    public final void b(String str, SearchConfigProto$TapTarget searchConfigProto$TapTarget) {
        this.f6942w.f7595m.setText(str);
        if (!FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get()) {
            prepareToFocusEditText(true);
        }
        if (this.f6932m.f7283p.f7188k) {
            return;
        }
        this.f6942w.f7595m.showKeyboard(true);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
    }

    @Override // com.android.launcher3.search.SearchCallback
    public final void clearSearchResult() {
        if (this.f6913M) {
            o();
            this.f6942w.f7595m.c();
        } else {
            this.f6942w.f7595m.clearSearchResult();
        }
        if (this.f6905E > 0 && !Utilities.isRunningInTestHarness()) {
            StatsLogManager.StatsLogger logger = ((ActivityContext) this.f6932m.f7271d).getStatsLogManager().logger();
            LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
            LauncherAtomExtensions$ExtendedContainers.Builder newBuilder2 = LauncherAtomExtensions$ExtendedContainers.newBuilder();
            LauncherAtomExtensions$DeviceSearchResultContainer.Builder newBuilder3 = LauncherAtomExtensions$DeviceSearchResultContainer.newBuilder();
            newBuilder3.setQueryLength$1(this.f6906F);
            newBuilder3.setSearchAttributes(this.f6932m.p(null));
            newBuilder2.setDeviceSearchResultContainer(newBuilder3);
            newBuilder.setExtendedContainers(newBuilder2);
            logger.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_SEARCH_SESSION_EXIT);
        }
        this.f6904D = "";
        this.f6905E = 0;
        this.f6906F = 0;
    }

    @Override // W1.p
    public final void d(Context context) {
        super.d(context);
        ((RippleDrawable) this.f6941v.getBackground()).setColor(ColorStateList.valueOf(context.getColor(R.color.accent_ripple_color)));
        s();
        QsbState qsbState = this.mState;
        r(qsbState, qsbState, false);
    }

    @Override // W1.p, com.android.launcher3.allapps.SearchUiManager
    public final ExtendedEditText getEditText() {
        return this.f6942w.f7595m;
    }

    @Override // android.view.View
    public final float getTranslationY() {
        return !FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get() ? super.getTranslationY() : super.getTranslationY() - l();
    }

    public final QsbState h() {
        return this.f6942w.f7595m.getText().length() > 0 ? QsbState.PREFIX : (this.f6942w.f7595m.hasFocus() || this.f6908H || (this.f6932m.m() && this.f6932m.u() && !FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get())) ? QsbState.ZERO_FOCUSED : QsbState.ZERO_UNFOCUSED;
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void initializeSearch(ActivityAllAppsContainerView activityAllAppsContainerView) {
        SearchEditText searchEditText = this.f6942w.f7595m;
        C0687q c0687q = new C0687q(this.f6932m);
        searchEditText.f7583v = activityAllAppsContainerView;
        searchEditText.f7566e = c0687q;
        searchEditText.f7567f = this;
        searchEditText.f7577p.initialize(c0687q, searchEditText, (ActivityContext) ActivityContext.lookupContext(searchEditText.getContext()), this);
        searchEditText.setOnBackKeyListener(searchEditText.f7584w);
    }

    @Override // android.view.View
    public final boolean isEnabled() {
        if (super.isEnabled() && getVisibility() == 0) {
            KeyboardInsetAnimationCallback keyboardInsetAnimationCallback = this.f6934o;
            KeyboardInsetAnimationCallback.KeyboardTranslationState keyboardTranslationState = KeyboardInsetAnimationCallback.KeyboardTranslationState.SYSTEM;
            if ((keyboardInsetAnimationCallback == null ? keyboardTranslationState : keyboardInsetAnimationCallback.getKeyboardTranslationState()) == keyboardTranslationState) {
                return true;
            }
        }
        return false;
    }

    public final int j() {
        if (FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get()) {
            int floatingSearchBarRestingMarginEnd = this.f1911d.getAppsView() == null ? -1 : this.f1911d.getAppsView().getFloatingSearchBarRestingMarginEnd();
            return floatingSearchBarRestingMarginEnd < 0 ? this.f6938s : floatingSearchBarRestingMarginEnd;
        }
        return this.f6939t;
    }

    public final int k() {
        if (FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get()) {
            int floatingSearchBarRestingMarginStart = this.f1911d.getAppsView() == null ? -1 : this.f1911d.getAppsView().getFloatingSearchBarRestingMarginStart();
            return floatingSearchBarRestingMarginStart < 0 ? this.f6938s : floatingSearchBarRestingMarginStart;
        }
        return this.f6938s;
    }

    public final int l() {
        return this.f1911d.getDeviceProfile().heightPx - getHeight();
    }

    public final void m() {
        C0719y0 c0719y0 = this.f6932m;
        if (c0719y0.f7291x) {
            return;
        }
        if (c0719y0.f7287t == OneSearchSessionManager$ZeroEntryState.f6663d && !Utilities.isRunningInTestHarness()) {
            C0708v1.a((ActivityContext) this.f6932m.f7271d);
        }
        ((ActivityContext) this.f6932m.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_SEARCHBOX_TAP);
        this.f6932m.B();
        o();
    }

    public final void n(final QsbState qsbState) {
        boolean z4 = qsbState.isExpanded;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        if (marginLayoutParams != null) {
            marginLayoutParams.setMarginStart(z4 ? this.f6915O : this.f6914N);
            marginLayoutParams.setMarginEnd(z4 ? this.f6917Q : this.f6916P);
            setLayoutParams(marginLayoutParams);
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f6945z.getLayoutParams();
        V2 v22 = new V2(2, layoutParams);
        if (z4) {
            v22.run();
            layoutParams.setMarginStart(this.f6919S);
        } else if (this.f6911K) {
            layoutParams.addRule(14);
            layoutParams.removeRule(20);
            layoutParams.setMarginStart(0);
        } else {
            v22.run();
            layoutParams.setMarginStart(this.f6918R);
        }
        this.f6945z.setLayoutParams(layoutParams);
        final RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f6942w.getLayoutParams();
        Runnable runnable = new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.b3
            @Override // java.lang.Runnable
            public final void run() {
                UniversalSearchInputView.QsbState qsbState2;
                UniversalSearchInputView universalSearchInputView = UniversalSearchInputView.this;
                RelativeLayout.LayoutParams layoutParams3 = layoutParams2;
                UniversalSearchInputView.QsbState qsbState3 = qsbState;
                if (universalSearchInputView.f6909I) {
                    layoutParams3.addRule(17, R.id.g_icon);
                    layoutParams3.removeRule(20);
                } else {
                    layoutParams3.removeRule(17);
                    layoutParams3.addRule(20);
                }
                if (!universalSearchInputView.f6909I || qsbState3 == UniversalSearchInputView.QsbState.PREFIX || (qsbState3 == (qsbState2 = UniversalSearchInputView.QsbState.ZERO_FOCUSED) && universalSearchInputView.f6910J)) {
                    layoutParams3.addRule(16, R.id.action_btn_container);
                    layoutParams3.removeRule(21);
                } else if (qsbState3 == qsbState2) {
                    layoutParams3.removeRule(16);
                    layoutParams3.addRule(21);
                }
            }
        };
        if (z4) {
            runnable.run();
            layoutParams2.setMarginStart(this.f6921U);
        } else if (this.f6911K) {
            layoutParams2.removeRule(17);
            layoutParams2.removeRule(16);
            layoutParams2.addRule(20);
            layoutParams2.addRule(21);
            layoutParams2.setMarginStart(0);
        } else {
            runnable.run();
            layoutParams2.setMarginStart(this.f6920T);
        }
        this.f6942w.setLayoutParams(layoutParams2);
    }

    public final void o() {
        ArrayList arrayList;
        this.f6913M = true;
        g3 g3Var = this.f6932m.f7284q;
        synchronized (g3Var.f7068f) {
            ArrayList arrayList2 = g3Var.f7068f;
            arrayList2.getClass();
            arrayList = new ArrayList(arrayList2);
        }
        this.f6942w.f7595m.onSearchResult(null, arrayList, 2);
        this.f6932m.A(arrayList);
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get()) {
            int i4 = windowInsets.getInsets(WindowInsets.Type.ime()).bottom;
            KeyboardInsetAnimationCallback keyboardInsetAnimationCallback = this.f6934o;
            if ((keyboardInsetAnimationCallback == null ? KeyboardInsetAnimationCallback.KeyboardTranslationState.SYSTEM : keyboardInsetAnimationCallback.getKeyboardTranslationState()) != KeyboardInsetAnimationCallback.KeyboardTranslationState.MANUAL_PREPARED) {
                this.f6936q = i4;
            }
            setTranslationY(-i4);
            return super.onApplyWindowInsets(windowInsets);
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // W1.p, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f6932m.f7284q.f7069g.add(this);
        C0719y0 c0719y0 = this.f6932m;
        ((ArrayList) c0719y0.f7278k).add(this.f6929j);
        this.f6942w.f7595m.addOnFocusChangeListener(this.f6931l);
        this.f1911d.addOnDeviceProfileChangeListener(this.f6930k);
        this.f6942w.f7595m.addTextChangedListener(this);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        post(new V2(1, this));
    }

    @Override // W1.p, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f6932m.f7284q.f7069g.remove(this);
        C0719y0 c0719y0 = this.f6932m;
        ((ArrayList) c0719y0.f7278k).remove(this.f6929j);
        this.f6942w.f7595m.removeOnFocusChangeListener(this.f6931l);
        this.f1911d.removeOnDeviceProfileChangeListener(this.f6930k);
        this.f6942w.f7595m.removeTextChangedListener(this);
    }

    @Override // W1.p, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f6941v = findViewById(R.id.ripple);
        TypeAheadSearchInputView typeAheadSearchInputView = (TypeAheadSearchInputView) findViewById(R.id.typeahead_input);
        this.f6942w = typeAheadSearchInputView;
        typeAheadSearchInputView.f7595m.f6483d = new V2(0, this);
        setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.apps.nexuslauncher.allapps.W2

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ UniversalSearchInputView f6967e;

            {
                this.f6967e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        UniversalSearchInputView universalSearchInputView = this.f6967e;
                        int i4 = UniversalSearchInputView.f6900f0;
                        universalSearchInputView.m();
                        return;
                    case 1:
                        UniversalSearchInputView universalSearchInputView2 = this.f6967e;
                        ((ActivityContext) universalSearchInputView2.f6932m.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCHBOX_LENS_TAP);
                        W1.m.a(universalSearchInputView2.getContext());
                        return;
                    case 2:
                        UniversalSearchInputView universalSearchInputView3 = this.f6967e;
                        if (universalSearchInputView3.f6942w.f7595m.getText().length() > 0) {
                            universalSearchInputView3.f6942w.f7595m.requestFocus();
                            universalSearchInputView3.f6942w.f7595m.setText("");
                            universalSearchInputView3.f6942w.f7595m.showKeyboard(true);
                            ((ActivityContext) universalSearchInputView3.f6932m.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_CLEAR_SEARCHBOX_TAP);
                            universalSearchInputView3.f6906F = 0;
                            ((ArrayList) universalSearchInputView3.f6932m.f7264D).add(Long.valueOf(SystemClock.elapsedRealtime()));
                            C0719y0 c0719y0 = universalSearchInputView3.f6932m;
                            if (c0719y0.f7283p.f7190m || c0719y0.x()) {
                                universalSearchInputView3.f6942w.f7595m.clearSearchResult();
                                universalSearchInputView3.clearSearchResult();
                                return;
                            }
                            return;
                        }
                        return;
                    default:
                        UniversalSearchInputView universalSearchInputView4 = this.f6967e;
                        int i5 = UniversalSearchInputView.f6900f0;
                        universalSearchInputView4.getClass();
                        RectF rectF = new RectF(Utilities.getViewBounds(view));
                        float centerX = rectF.centerX();
                        rectF.right = centerX;
                        rectF.left = centerX;
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(universalSearchInputView4.f6933n);
                        universalSearchInputView4.f6926c0 = OptionsPopupView.show((ActivityContext) universalSearchInputView4.f6932m.f7271d, rectF, arrayList, true);
                        return;
                }
            }
        });
        ImageView imageView = (ImageView) findViewById(R.id.g_icon);
        this.f6945z = imageView;
        imageView.setOnClickListener(new X2());
        this.f6901A = findViewById(R.id.end_icons);
        this.f1914g = (AssistantIconView) findViewById(R.id.mic_icon);
        ((ImageView) findViewById(R.id.lens_icon)).setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.apps.nexuslauncher.allapps.W2

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ UniversalSearchInputView f6967e;

            {
                this.f6967e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        UniversalSearchInputView universalSearchInputView = this.f6967e;
                        int i4 = UniversalSearchInputView.f6900f0;
                        universalSearchInputView.m();
                        return;
                    case 1:
                        UniversalSearchInputView universalSearchInputView2 = this.f6967e;
                        ((ActivityContext) universalSearchInputView2.f6932m.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCHBOX_LENS_TAP);
                        W1.m.a(universalSearchInputView2.getContext());
                        return;
                    case 2:
                        UniversalSearchInputView universalSearchInputView3 = this.f6967e;
                        if (universalSearchInputView3.f6942w.f7595m.getText().length() > 0) {
                            universalSearchInputView3.f6942w.f7595m.requestFocus();
                            universalSearchInputView3.f6942w.f7595m.setText("");
                            universalSearchInputView3.f6942w.f7595m.showKeyboard(true);
                            ((ActivityContext) universalSearchInputView3.f6932m.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_CLEAR_SEARCHBOX_TAP);
                            universalSearchInputView3.f6906F = 0;
                            ((ArrayList) universalSearchInputView3.f6932m.f7264D).add(Long.valueOf(SystemClock.elapsedRealtime()));
                            C0719y0 c0719y0 = universalSearchInputView3.f6932m;
                            if (c0719y0.f7283p.f7190m || c0719y0.x()) {
                                universalSearchInputView3.f6942w.f7595m.clearSearchResult();
                                universalSearchInputView3.clearSearchResult();
                                return;
                            }
                            return;
                        }
                        return;
                    default:
                        UniversalSearchInputView universalSearchInputView4 = this.f6967e;
                        int i5 = UniversalSearchInputView.f6900f0;
                        universalSearchInputView4.getClass();
                        RectF rectF = new RectF(Utilities.getViewBounds(view));
                        float centerX = rectF.centerX();
                        rectF.right = centerX;
                        rectF.left = centerX;
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(universalSearchInputView4.f6933n);
                        universalSearchInputView4.f6926c0 = OptionsPopupView.show((ActivityContext) universalSearchInputView4.f6932m.f7271d, rectF, arrayList, true);
                        return;
                }
            }
        });
        View findViewById = findViewById(R.id.clear_btn);
        this.f6902B = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.apps.nexuslauncher.allapps.W2

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ UniversalSearchInputView f6967e;

            {
                this.f6967e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        UniversalSearchInputView universalSearchInputView = this.f6967e;
                        int i4 = UniversalSearchInputView.f6900f0;
                        universalSearchInputView.m();
                        return;
                    case 1:
                        UniversalSearchInputView universalSearchInputView2 = this.f6967e;
                        ((ActivityContext) universalSearchInputView2.f6932m.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCHBOX_LENS_TAP);
                        W1.m.a(universalSearchInputView2.getContext());
                        return;
                    case 2:
                        UniversalSearchInputView universalSearchInputView3 = this.f6967e;
                        if (universalSearchInputView3.f6942w.f7595m.getText().length() > 0) {
                            universalSearchInputView3.f6942w.f7595m.requestFocus();
                            universalSearchInputView3.f6942w.f7595m.setText("");
                            universalSearchInputView3.f6942w.f7595m.showKeyboard(true);
                            ((ActivityContext) universalSearchInputView3.f6932m.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_CLEAR_SEARCHBOX_TAP);
                            universalSearchInputView3.f6906F = 0;
                            ((ArrayList) universalSearchInputView3.f6932m.f7264D).add(Long.valueOf(SystemClock.elapsedRealtime()));
                            C0719y0 c0719y0 = universalSearchInputView3.f6932m;
                            if (c0719y0.f7283p.f7190m || c0719y0.x()) {
                                universalSearchInputView3.f6942w.f7595m.clearSearchResult();
                                universalSearchInputView3.clearSearchResult();
                                return;
                            }
                            return;
                        }
                        return;
                    default:
                        UniversalSearchInputView universalSearchInputView4 = this.f6967e;
                        int i5 = UniversalSearchInputView.f6900f0;
                        universalSearchInputView4.getClass();
                        RectF rectF = new RectF(Utilities.getViewBounds(view));
                        float centerX = rectF.centerX();
                        rectF.right = centerX;
                        rectF.left = centerX;
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(universalSearchInputView4.f6933n);
                        universalSearchInputView4.f6926c0 = OptionsPopupView.show((ActivityContext) universalSearchInputView4.f6932m.f7271d, rectF, arrayList, true);
                        return;
                }
            }
        });
        View findViewById2 = findViewById(R.id.menu_btn);
        this.f6903C = findViewById2;
        findViewById2.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.apps.nexuslauncher.allapps.W2

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ UniversalSearchInputView f6967e;

            {
                this.f6967e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        UniversalSearchInputView universalSearchInputView = this.f6967e;
                        int i4 = UniversalSearchInputView.f6900f0;
                        universalSearchInputView.m();
                        return;
                    case 1:
                        UniversalSearchInputView universalSearchInputView2 = this.f6967e;
                        ((ActivityContext) universalSearchInputView2.f6932m.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCHBOX_LENS_TAP);
                        W1.m.a(universalSearchInputView2.getContext());
                        return;
                    case 2:
                        UniversalSearchInputView universalSearchInputView3 = this.f6967e;
                        if (universalSearchInputView3.f6942w.f7595m.getText().length() > 0) {
                            universalSearchInputView3.f6942w.f7595m.requestFocus();
                            universalSearchInputView3.f6942w.f7595m.setText("");
                            universalSearchInputView3.f6942w.f7595m.showKeyboard(true);
                            ((ActivityContext) universalSearchInputView3.f6932m.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_CLEAR_SEARCHBOX_TAP);
                            universalSearchInputView3.f6906F = 0;
                            ((ArrayList) universalSearchInputView3.f6932m.f7264D).add(Long.valueOf(SystemClock.elapsedRealtime()));
                            C0719y0 c0719y0 = universalSearchInputView3.f6932m;
                            if (c0719y0.f7283p.f7190m || c0719y0.x()) {
                                universalSearchInputView3.f6942w.f7595m.clearSearchResult();
                                universalSearchInputView3.clearSearchResult();
                                return;
                            }
                            return;
                        }
                        return;
                    default:
                        UniversalSearchInputView universalSearchInputView4 = this.f6967e;
                        int i5 = UniversalSearchInputView.f6900f0;
                        universalSearchInputView4.getClass();
                        RectF rectF = new RectF(Utilities.getViewBounds(view));
                        float centerX = rectF.centerX();
                        rectF.right = centerX;
                        rectF.left = centerX;
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(universalSearchInputView4.f6933n);
                        universalSearchInputView4.f6926c0 = OptionsPopupView.show((ActivityContext) universalSearchInputView4.f6932m.f7271d, rectF, arrayList, true);
                        return;
                }
            }
        });
        this.f6943x = (TextView) LayoutInflater.from(((FrameLayout) this).mContext).inflate(R.layout.typeahead_search_input_hint_placeholder, (ViewGroup) this.f6942w, false);
        if (FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get()) {
            KeyboardInsetAnimationCallback keyboardInsetAnimationCallback = new KeyboardInsetAnimationCallback(this);
            this.f6934o = keyboardInsetAnimationCallback;
            setWindowInsetsAnimationCallback(keyboardInsetAnimationCallback);
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.qsb_g_icon_marginStart);
        this.f6918R = dimensionPixelSize;
        this.f6919S = getResources().getDimensionPixelOffset(R.dimen.search_box_child_offset) + dimensionPixelSize;
        this.f6928e0 = getResources().getDimensionPixelSize(R.dimen.all_apps_floating_search_background_padding_top);
        this.f6909I = this.f6932m.M();
        QsbState h4 = h();
        u(h4);
        s();
        r(this.mState, h4, false);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            float x4 = motionEvent.getX();
            float y4 = motionEvent.getY();
            Rect rect = new Rect();
            this.f6942w.getHitRect(rect);
            if (rect.contains((int) x4, (int) y4)) {
                this.f6941v.getBackground().setHotspot(x4, y4);
                this.f6912L = true;
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.android.launcher3.anim.KeyboardInsetAnimationCallback.KeyboardInsetListener
    public final void onKeyboardAlphaChanged(float f4) {
        this.f6940u = f4;
        q();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        if (z4) {
            p();
        }
    }

    @Override // com.android.launcher3.search.SearchCallback
    public final void onSearchResult(String str, ArrayList arrayList, int i4) {
        this.f6942w.f7595m.onSearchResult(str, arrayList, i4);
        int length = str == null ? 0 : str.length();
        int size = arrayList != null ? arrayList.size() : 0;
        if (this.f6905E == 0 && size > 0) {
            if (!Utilities.isRunningInTestHarness()) {
                StatsLogManager.StatsLogger logger = ((ActivityContext) this.f6932m.f7271d).getStatsLogManager().logger();
                LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtomExtensions$ExtendedContainers.Builder newBuilder2 = LauncherAtomExtensions$ExtendedContainers.newBuilder();
                LauncherAtomExtensions$DeviceSearchResultContainer.Builder newBuilder3 = LauncherAtomExtensions$DeviceSearchResultContainer.newBuilder();
                newBuilder3.setSearchAttributes(this.f6932m.p(null));
                newBuilder2.setDeviceSearchResultContainer(newBuilder3);
                newBuilder.setExtendedContainers(newBuilder2);
                logger.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_SEARCH_SESSION_ENTRY);
            }
            this.f6905E = size;
        }
        if (length > this.f6906F) {
            this.f6906F = length;
        }
        if (arrayList != null && str != null && !this.f6904D.startsWith(str)) {
            this.f6932m.H(arrayList);
        }
        this.f6904D = str;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
    }

    @Override // com.android.launcher3.anim.KeyboardInsetAnimationCallback.KeyboardInsetListener
    public final void onTranslationEnd() {
        this.f6940u = 1.0f;
    }

    @Override // com.android.launcher3.anim.KeyboardInsetAnimationCallback.KeyboardInsetListener
    public final void onTranslationStart() {
    }

    public final void p() {
        if (FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get()) {
            int floatingSearchBarRestingMarginBottom = this.f1911d.getAppsView() == null ? 0 : this.f1911d.getAppsView().getFloatingSearchBarRestingMarginBottom();
            int max = floatingSearchBarRestingMarginBottom >= 0 ? Math.max(floatingSearchBarRestingMarginBottom, this.f6935p.bottom) : Math.min(floatingSearchBarRestingMarginBottom, -getHeight());
            boolean z4 = this.f6937r != max;
            this.f6937r = max;
            KeyboardInsetAnimationCallback keyboardInsetAnimationCallback = this.f6934o;
            KeyboardInsetAnimationCallback.KeyboardTranslationState keyboardTranslationState = KeyboardInsetAnimationCallback.KeyboardTranslationState.SYSTEM;
            if ((keyboardInsetAnimationCallback == null ? keyboardTranslationState : keyboardInsetAnimationCallback.getKeyboardTranslationState()) != keyboardTranslationState) {
                return;
            }
            if (getRootWindowInsets() != null) {
                this.f6936q = getRootWindowInsets().getInsets(WindowInsets.Type.ime()).bottom;
            }
            if (z4 && this.f6936q == 0.0f) {
                animate().translationY(l() - this.f6937r).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.apps.nexuslauncher.allapps.U2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        UniversalSearchInputView universalSearchInputView = UniversalSearchInputView.this;
                        int i4 = UniversalSearchInputView.f6900f0;
                        universalSearchInputView.q();
                    }
                });
            }
        }
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void prepareToFocusEditText(boolean z4) {
        this.f6908H = z4;
        updateState();
    }

    public final void q() {
        View view = this.f6927d0;
        if (view == null) {
            return;
        }
        view.setY((getY() + l()) - this.f6928e0);
        this.f6927d0.setAlpha(this.f6940u);
        this.f6927d0.setVisibility(this.mState.isExpanded && (this.f6936q > ((float) this.f6937r) ? 1 : (this.f6936q == ((float) this.f6937r) ? 0 : -1)) > 0 ? 0 : 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0183  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void r(com.google.android.apps.nexuslauncher.allapps.UniversalSearchInputView.QsbState r25, com.google.android.apps.nexuslauncher.allapps.UniversalSearchInputView.QsbState r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.allapps.UniversalSearchInputView.r(com.google.android.apps.nexuslauncher.allapps.UniversalSearchInputView$QsbState, com.google.android.apps.nexuslauncher.allapps.UniversalSearchInputView$QsbState, boolean):void");
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void refreshResults() {
        boolean z4 = false;
        this.f6932m.P(false);
        QsbState qsbState = this.mState;
        if ((qsbState == QsbState.ZERO_UNFOCUSED || qsbState == QsbState.ZERO_FOCUSED) ? true : true) {
            return;
        }
        this.f6942w.f7595m.f7577p.refreshSearchResult();
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void resetSearch() {
        this.f6913M = false;
        clearSearchResult();
        this.f6942w.f7595m.reset();
        this.f6942w.f7595m.clearFocus();
        r(this.mState, h(), FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get());
    }

    public final void s() {
        this.f6922V = i(16842808, getContext());
        this.f6923W = i(16842806, getContext());
        this.f6924a0 = E.a.k(this.f6922V, 0);
        this.f6925b0 = E.a.k(this.f6923W, 0);
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void setFocusedResultTitle(CharSequence charSequence, CharSequence charSequence2, boolean z4) {
        boolean z5;
        Object[] spans;
        TypeAheadSearchInputView typeAheadSearchInputView = this.f6942w;
        String charSequence3 = charSequence != null ? charSequence.toString() : null;
        String charSequence4 = charSequence2 != null ? charSequence2.toString() : null;
        typeAheadSearchInputView.f7598p = z4;
        String b4 = W0.b(charSequence3);
        String b5 = W0.b(charSequence4);
        String obj = typeAheadSearchInputView.f7595m.getText().toString();
        boolean z6 = false;
        if (!typeAheadSearchInputView.f7589g && !typeAheadSearchInputView.f7593k.x()) {
            if (!typeAheadSearchInputView.f7588f && W0.a(obj, b4) && typeAheadSearchInputView.f7586d) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(obj);
                spannableStringBuilder.append((CharSequence) b4.substring(obj.length()));
                spannableStringBuilder.setSpan(new ForegroundColorSpan(0), 0, obj.length(), 33);
                spannableStringBuilder.setSpan(new ForegroundColorSpan(GraphicsUtils.getAttrColor(16843282, typeAheadSearchInputView.f7594l)), obj.length(), spannableStringBuilder.length(), 33);
                typeAheadSearchInputView.f7597o.setText(spannableStringBuilder);
                typeAheadSearchInputView.f7597o.setVisibility(0);
                return;
            }
            return;
        }
        SearchEditText searchEditText = typeAheadSearchInputView.f7595m;
        if (searchEditText.f7585x.f7199v.f7222o) {
            Editable text = searchEditText.getText();
            if (text != null && (spans = text.getSpans(0, text.length(), Object.class)) != null) {
                int length = spans.length;
                do {
                    length--;
                    if (length >= 0) {
                    }
                } while ((text.getSpanFlags(spans[length]) & 256) == 0);
                z5 = false;
            }
            z5 = !searchEditText.f7582u;
            break;
        } else {
            z5 = false;
        }
        if (z5) {
            if (W0.a(obj, b4)) {
                typeAheadSearchInputView.f7595m.i(obj, b4);
            } else if (W0.a(obj, b5)) {
                typeAheadSearchInputView.f7595m.i(obj, b5);
            } else {
                if (!TextUtils.isEmpty(obj) && !TextUtils.isEmpty(charSequence3) && charSequence3.matches("^[\\x00-\\x7F]*$")) {
                    z6 = true;
                }
                if (z6) {
                    SearchEditText searchEditText2 = typeAheadSearchInputView.f7595m;
                    searchEditText2.getClass();
                    W0.b(obj);
                    if (searchEditText2.f7576o.f2291a) {
                        return;
                    }
                    searchEditText2.f7569h.b(charSequence3);
                }
            }
        }
    }

    @Override // W1.p, com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        super.setInsets(rect);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        this.f6938s = marginLayoutParams.getMarginStart();
        this.f6939t = marginLayoutParams.getMarginEnd();
        this.f6935p.set(rect);
        if (FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get()) {
            setTranslationY(-this.f6936q);
        }
        f();
    }

    public void setMockObjectsFromTest(C0719y0 c0719y0) {
        this.f6932m = c0719y0;
    }

    @Override // android.view.View
    public final void setTranslationY(float f4) {
        if (!FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get()) {
            super.setTranslationY(f4);
            return;
        }
        animate().cancel();
        KeyboardInsetAnimationCallback keyboardInsetAnimationCallback = this.f6934o;
        if ((keyboardInsetAnimationCallback == null ? KeyboardInsetAnimationCallback.KeyboardTranslationState.SYSTEM : keyboardInsetAnimationCallback.getKeyboardTranslationState()) == KeyboardInsetAnimationCallback.KeyboardTranslationState.MANUAL_ONGOING) {
            this.f6936q = -f4;
        }
        int i4 = this.f6937r;
        if (i4 >= 0) {
            f4 = Math.min(f4, -i4);
        } else if (this.f6936q == 0.0f) {
            f4 = Math.max(f4, -i4);
        }
        super.setTranslationY(f4 + l());
        q();
    }

    public final void t(QsbState qsbState, QsbState qsbState2, PropertySetter propertySetter, boolean z4) {
        DeviceProfile deviceProfile = ((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(((FrameLayout) this).mContext)).getDeviceProfile(((FrameLayout) this).mContext);
        int i4 = (deviceProfile.isMultiDisplay || deviceProfile.isPhone) ? R.string.allapps_device_search_hint : R.string.allapps_device_search_hint_tablet;
        QsbState qsbState3 = QsbState.ZERO_UNFOCUSED;
        if (qsbState2 == qsbState3 && this.f6909I) {
            int i5 = this.f6925b0;
            int i6 = this.f6924a0;
            SearchEditText searchEditText = this.f6942w.f7595m;
            IntProperty intProperty = LauncherAnimUtils.HINT_TEXT_COLOR;
            Interpolator interpolator = y0.e.f12949m;
            long j4 = 50;
            long j5 = 0;
            propertySetter.setColor(searchEditText, intProperty, i6, interpolator).setDuration(j4).setStartDelay(j5);
            propertySetter.setColor(this.f6942w.f7595m, LauncherAnimUtils.TEXT_COLOR, i5, interpolator).setDuration(j4).setStartDelay(j5);
        } else {
            QsbState qsbState4 = QsbState.ZERO_FOCUSED;
            if (qsbState == qsbState3 && qsbState2 == qsbState4) {
                int i7 = this.f6925b0;
                if (z4) {
                    this.f6942w.f7595m.setCursorVisible(false);
                    if (qsbState2.isExpanded || !this.f6911K) {
                        propertySetter.addEndListener(new c3(this, 1));
                    }
                }
                if (this.f6909I) {
                    ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.f6942w.f7595m, g(LauncherAnimUtils.HINT_TEXT_COLOR, this.f6942w.f7595m.getHintTextColors().getDefaultColor(), this.f6924a0, this.f6922V));
                    ofPropertyValuesHolder.setInterpolator(y0.e.f12949m);
                    ofPropertyValuesHolder.setDuration(495L);
                    ofPropertyValuesHolder.setStartDelay(50L);
                    propertySetter.add(ofPropertyValuesHolder);
                } else {
                    this.f6943x.setText(i4);
                    this.f6943x.setTextColor(this.f6942w.f7595m.getCurrentHintTextColor());
                    this.f6942w.f7595m.setHintTextColor(this.f6924a0);
                    Rect rect = new Rect(this.f6942w.f7595m.getLeft(), this.f6942w.f7595m.getTop(), this.f6942w.f7595m.getRight(), this.f6942w.f7595m.getBottom());
                    if (!rect.equals(this.f6944y)) {
                        this.f6943x.measure(View.MeasureSpec.makeMeasureSpec(rect.width(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(rect.height(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
                        this.f6943x.layout(rect.left, rect.top, rect.right, rect.bottom);
                        this.f6944y = rect;
                    }
                    this.f6942w.getOverlay().add(this.f6943x);
                    TextView textView = this.f6943x;
                    IntProperty intProperty2 = LauncherAnimUtils.TEXT_COLOR;
                    int i8 = this.f6924a0;
                    Interpolator interpolator2 = y0.e.f12949m;
                    propertySetter.setColor(textView, intProperty2, i8, interpolator2).setDuration(150L).setStartDelay(50L);
                    propertySetter.setColor(this.f6942w.f7595m, LauncherAnimUtils.HINT_TEXT_COLOR, this.f6922V, interpolator2).setDuration(345L).setStartDelay(200L);
                    propertySetter.addEndListener(new c3(this, 2));
                }
                long j6 = 0;
                propertySetter.setColor(this.f6942w.f7595m, LauncherAnimUtils.TEXT_COLOR, i7, y0.e.f12949m).setDuration(j6).setStartDelay(j6);
            } else if (qsbState2 == qsbState3 || qsbState2 == qsbState4) {
                int i9 = this.f6925b0;
                int i10 = this.f6922V;
                SearchEditText searchEditText2 = this.f6942w.f7595m;
                IntProperty intProperty3 = LauncherAnimUtils.HINT_TEXT_COLOR;
                Interpolator interpolator3 = y0.e.f12949m;
                long j7 = 100;
                propertySetter.setColor(searchEditText2, intProperty3, i10, interpolator3).setDuration(j7).setStartDelay(j7);
                propertySetter.setColor(this.f6942w.f7595m, LauncherAnimUtils.TEXT_COLOR, i9, interpolator3).setDuration(j7).setStartDelay(j7);
            } else if (qsbState == qsbState3 && qsbState2 == QsbState.PREFIX) {
                if (z4) {
                    this.f6942w.f7595m.setCursorVisible(false);
                    if (qsbState2.isExpanded || !this.f6911K) {
                        propertySetter.addEndListener(new c3(this, 3));
                    }
                }
                IntProperty intProperty4 = LauncherAnimUtils.HINT_TEXT_COLOR;
                int defaultColor = this.f6942w.f7595m.getHintTextColors().getDefaultColor();
                int i11 = this.f6924a0;
                PropertyValuesHolder g4 = g(intProperty4, defaultColor, i11, i11);
                IntProperty intProperty5 = LauncherAnimUtils.TEXT_COLOR;
                int i12 = this.f6925b0;
                ObjectAnimator ofPropertyValuesHolder2 = ObjectAnimator.ofPropertyValuesHolder(this.f6942w.f7595m, g4, g(intProperty5, i12, i12, this.f6923W));
                ofPropertyValuesHolder2.setInterpolator(y0.e.f12949m);
                ofPropertyValuesHolder2.setDuration(495L);
                ofPropertyValuesHolder2.setStartDelay(50L);
                propertySetter.add(ofPropertyValuesHolder2);
            } else {
                int i13 = this.f6923W;
                int i14 = this.f6924a0;
                SearchEditText searchEditText3 = this.f6942w.f7595m;
                IntProperty intProperty6 = LauncherAnimUtils.HINT_TEXT_COLOR;
                Interpolator interpolator4 = y0.e.f12949m;
                Animator color = propertySetter.setColor(searchEditText3, intProperty6, i14, interpolator4);
                long j8 = 0;
                color.setDuration(j8).setStartDelay(j8);
                propertySetter.setColor(this.f6942w.f7595m, LauncherAnimUtils.TEXT_COLOR, i13, interpolator4).setDuration(j8).setStartDelay(j8);
            }
        }
        Resources resources = ((FrameLayout) this).mContext.getResources();
        if (this.f6909I) {
            i4 = R.string.allapps_toast_hint;
        }
        String string = resources.getString(i4);
        if (this.f6942w.f7595m.getHint().toString().equals(string)) {
            return;
        }
        this.f6942w.f7595m.setHint(string);
    }

    public final void u(QsbState qsbState) {
        int dimensionPixelSize = this.f6909I ? getResources().getDimensionPixelSize(R.dimen.qsb_text_input_marginStart_small) : getResources().getDimensionPixelSize(R.dimen.qsb_text_input_marginStart_large);
        this.f6920T = dimensionPixelSize;
        this.f6921U = getResources().getDimensionPixelOffset(R.dimen.search_box_child_offset) + dimensionPixelSize;
        n(qsbState);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0083, code lost:
        if (r4 == false) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateState() {
        /*
            r10 = this;
            com.google.android.apps.nexuslauncher.allapps.UniversalSearchInputView$QsbState r0 = r10.mState
            com.google.android.apps.nexuslauncher.allapps.UniversalSearchInputView$QsbState r1 = r10.h()
            com.android.launcher3.config.FeatureFlags$BooleanFlag r2 = com.android.launcher3.config.FeatureFlags.ENABLE_FLOATING_SEARCH_BAR
            boolean r2 = r2.get()
            com.google.android.apps.nexuslauncher.allapps.OneSearchSessionManager$ZeroEntryState r3 = com.google.android.apps.nexuslauncher.allapps.OneSearchSessionManager$ZeroEntryState.f6664e
            r4 = 1
            r5 = 0
            if (r2 != 0) goto L1f
            com.google.android.apps.nexuslauncher.allapps.UniversalSearchInputView$QsbState r2 = com.google.android.apps.nexuslauncher.allapps.UniversalSearchInputView.QsbState.ZERO_UNFOCUSED
            if (r0 != r2) goto L1f
            com.google.android.apps.nexuslauncher.allapps.y0 r2 = r10.f6932m
            com.google.android.apps.nexuslauncher.allapps.OneSearchSessionManager$ZeroEntryState r2 = r2.f7287t
            if (r2 == r3) goto L1d
            goto L1f
        L1d:
            r2 = r5
            goto L20
        L1f:
            r2 = r4
        L20:
            if (r0 != r1) goto L86
            boolean r6 = r10.f6910J
            com.google.android.apps.nexuslauncher.allapps.y0 r7 = r10.f6932m
            com.google.android.apps.nexuslauncher.allapps.OneSearchSessionManager$ZeroEntryState r8 = r7.f7287t
            if (r8 != r3) goto L33
            com.google.android.apps.nexuslauncher.allapps.s1 r3 = r7.f7283p
            boolean r3 = r3.f7183f
            if (r3 == 0) goto L31
            goto L33
        L31:
            r3 = r5
            goto L34
        L33:
            r3 = r4
        L34:
            if (r6 == r3) goto L38
            r3 = r4
            goto L39
        L38:
            r3 = r5
        L39:
            boolean r6 = r10.f6911K
            com.android.launcher3.views.ActivityContext r7 = r10.f1911d
            com.android.launcher3.allapps.ActivityAllAppsContainerView r7 = r7.getAppsView()
            if (r7 == 0) goto L51
            com.android.launcher3.views.ActivityContext r7 = r10.f1911d
            com.android.launcher3.allapps.ActivityAllAppsContainerView r7 = r7.getAppsView()
            boolean r7 = r7.shouldFloatingSearchBarBePillWhenUnfocused()
            if (r7 == 0) goto L51
            r7 = r4
            goto L52
        L51:
            r7 = r5
        L52:
            if (r6 == r7) goto L56
            r6 = r4
            goto L57
        L56:
            r6 = r5
        L57:
            boolean r7 = r10.f6909I
            com.google.android.apps.nexuslauncher.allapps.y0 r8 = r10.f6932m
            boolean r8 = r8.M()
            if (r7 == r8) goto L63
            r7 = r4
            goto L64
        L63:
            r7 = r5
        L64:
            int r8 = r10.f6914N
            int r9 = r10.k()
            if (r8 != r9) goto L76
            int r8 = r10.f6916P
            int r9 = r10.j()
            if (r8 == r9) goto L75
            goto L76
        L75:
            r4 = r5
        L76:
            if (r3 != 0) goto L7f
            if (r6 != 0) goto L7f
            if (r7 != 0) goto L7f
            if (r4 != 0) goto L7f
            return
        L7f:
            if (r6 != 0) goto L86
            if (r7 != 0) goto L86
            if (r4 != 0) goto L86
            goto L87
        L86:
            r5 = r2
        L87:
            r10.r(r0, r1, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.allapps.UniversalSearchInputView.updateState():void");
    }

    public UniversalSearchInputView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Type inference failed for: r8v2, types: [com.google.android.apps.nexuslauncher.allapps.Y2] */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.google.android.apps.nexuslauncher.allapps.Z2] */
    public UniversalSearchInputView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f6929j = new d3(this);
        this.f6930k = new DeviceProfile.OnDeviceProfileChangeListener() { // from class: com.google.android.apps.nexuslauncher.allapps.Y2
            @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
            public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
                int i5 = UniversalSearchInputView.f6900f0;
                UniversalSearchInputView universalSearchInputView = UniversalSearchInputView.this;
                universalSearchInputView.p();
                universalSearchInputView.updateState();
            }
        };
        this.f6931l = new View.OnFocusChangeListener() { // from class: com.google.android.apps.nexuslauncher.allapps.Z2
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z4) {
                UniversalSearchInputView universalSearchInputView = UniversalSearchInputView.this;
                if (z4) {
                    universalSearchInputView.f6908H = false;
                    universalSearchInputView.f6932m.D();
                } else {
                    int i5 = UniversalSearchInputView.f6900f0;
                }
                universalSearchInputView.updateState();
            }
        };
        this.f6935p = new Rect();
        this.f6940u = 1.0f;
        this.f6904D = "";
        this.mState = QsbState.ZERO_UNFOCUSED;
        this.f6908H = false;
        this.f6909I = true;
        this.f6910J = false;
        this.f6911K = false;
        this.f6912L = false;
        this.f6932m = C0719y0.f(context);
        this.f6933n = new OptionsPopupView.OptionItem(getContext(), R.string.hotseat_qsb_preferences, R.drawable.ic_setting, NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_PREFERENCE_TAP_OR_LONG_PRESS, new a3());
    }

    @Override // com.android.launcher3.search.SearchCallback
    public final void onSearchResult(String str, ArrayList arrayList) {
        onSearchResult(str, arrayList, 2);
    }
}
