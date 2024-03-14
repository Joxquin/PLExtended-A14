package com.google.android.systemui.smartspace;

import K2.C0032e;
import K2.F;
import K2.K;
import K2.Q;
import K2.t;
import L2.c;
import L2.d;
import N2.a;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.FrameLayout;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;
import k1.C1202a;
import n1.e;
/* loaded from: classes.dex */
public class WeatherSmartspaceView extends FrameLayout implements e {

    /* renamed from: k  reason: collision with root package name */
    public static final /* synthetic */ int f8378k = 0;

    /* renamed from: d  reason: collision with root package name */
    public DoubleShadowTextView f8379d;

    /* renamed from: e  reason: collision with root package name */
    public final F f8380e;

    /* renamed from: f  reason: collision with root package name */
    public final int f8381f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f8382g;

    /* renamed from: h  reason: collision with root package name */
    public final int f8383h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f8384i;

    /* renamed from: j  reason: collision with root package name */
    public final Q f8385j;

    static {
        Log.isLoggable("WeatherSmartspaceView", 3);
    }

    public WeatherSmartspaceView(Context context) {
        this(context, null);
    }

    @Override // n1.e
    public final void a(List list) {
        SmartspaceAction headerAction;
        ArrayList arrayList = (ArrayList) list;
        if (arrayList.size() > 1) {
            return;
        }
        if (arrayList.isEmpty() && TextUtils.equals(null, "dream")) {
            return;
        }
        if (arrayList.isEmpty()) {
            t.f(this.f8379d, 8);
            return;
        }
        t.f(this.f8379d, 0);
        SmartspaceTarget smartspaceTarget = (SmartspaceTarget) arrayList.get(0);
        if (smartspaceTarget.getFeatureType() == 1 && (headerAction = smartspaceTarget.getHeaderAction()) != null) {
            CharSequence title = headerAction.getTitle();
            this.f8379d.setText(title.toString());
            a.a("WeatherSmartspaceView", this.f8379d, title, headerAction.getContentDescription());
            this.f8380e.b(C0032e.c(headerAction.getIcon(), getContext(), this.f8381f));
            this.f8379d.setCompoundDrawablesRelative(this.f8380e, null, null, null);
            if (this.f8382g) {
                DoubleShadowTextView doubleShadowTextView = this.f8379d;
                doubleShadowTextView.setPaddingRelative(0, 0, 0, this.f8383h - ((int) Math.floor(doubleShadowTextView.getPaint().getFontMetrics().descent)));
            }
            c cVar = new c();
            cVar.f1304a = K.a(smartspaceTarget);
            cVar.f1308e = smartspaceTarget.getFeatureType();
            cVar.f1305b = C0032e.d(null, 0.0f);
            getContext().getPackageManager();
            cVar.f1310g = -1;
            C0032e.g(this.f8379d, smartspaceTarget, headerAction, null, "WeatherSmartspaceView", new d(cVar));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (TextUtils.equals(null, "lockscreen")) {
            try {
                getContext().getContentResolver().registerContentObserver(Settings.Secure.getUriFor("doze_always_on"), false, this.f8385j, -1);
            } catch (Exception e4) {
                Log.w("WeatherSmartspaceView", "Unable to register DOZE_ALWAYS_ON content observer: ", e4);
            }
            Context context = getContext();
            this.f8384i = Settings.Secure.getIntForUser(context.getContentResolver(), "doze_always_on", 0, context.getUserId()) == 1;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getContext().getContentResolver().unregisterContentObserver(this.f8385j);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8379d = (DoubleShadowTextView) findViewById(R.id.weather_text_view);
    }

    public WeatherSmartspaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WeatherSmartspaceView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f8385j = new Q(this, new Handler());
        context.getTheme().applyStyle(R.style.Smartspace, false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1202a.f11174a, 0, 0);
        try {
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, context.getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_icon_size));
            int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(0, context.getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_icon_inset));
            this.f8382g = obtainStyledAttributes.getBoolean(2, false);
            this.f8383h = obtainStyledAttributes.getDimensionPixelSize(3, 0);
            obtainStyledAttributes.recycle();
            this.f8381f = dimensionPixelSize;
            this.f8380e = new F(context, dimensionPixelSize, dimensionPixelSize2);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }
}
