package com.google.android.systemui.smartspace;

import K2.C0032e;
import K2.D;
import K2.F;
import K2.K;
import L2.c;
import L2.d;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class DateSmartspaceView extends LinearLayout {

    /* renamed from: i  reason: collision with root package name */
    public static final /* synthetic */ int f8347i = 0;

    /* renamed from: d  reason: collision with root package name */
    public IcuDateTextView f8348d;

    /* renamed from: e  reason: collision with root package name */
    public final SmartspaceTarget f8349e;

    /* renamed from: f  reason: collision with root package name */
    public final SmartspaceAction f8350f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f8351g;

    /* renamed from: h  reason: collision with root package name */
    public final D f8352h;

    static {
        Log.isLoggable("DateSmartspaceView", 3);
    }

    public DateSmartspaceView(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (TextUtils.equals(null, "lockscreen")) {
            try {
                getContext().getContentResolver().registerContentObserver(Settings.Secure.getUriFor("doze_always_on"), false, this.f8352h, -1);
            } catch (Exception e4) {
                Log.w("DateSmartspaceView", "Unable to register DOZE_ALWAYS_ON content observer: ", e4);
            }
            Context context = getContext();
            this.f8351g = Settings.Secure.getIntForUser(context.getContentResolver(), "doze_always_on", 0, context.getUserId()) == 1;
        }
        c cVar = new c();
        cVar.f1304a = K.a(this.f8349e);
        cVar.f1308e = this.f8349e.getFeatureType();
        cVar.f1305b = C0032e.d(null, 0.0f);
        getContext().getPackageManager();
        cVar.f1310g = -1;
        C0032e.g(this.f8348d, this.f8349e, this.f8350f, null, "DateSmartspaceView", new d(cVar));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getContext().getContentResolver().unregisterContentObserver(this.f8352h);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8348d = (IcuDateTextView) findViewById(R.id.date);
        DoubleShadowTextView doubleShadowTextView = (DoubleShadowTextView) findViewById(R.id.alarm_text_view);
        ImageView imageView = (ImageView) findViewById(R.id.dnd_icon);
    }

    public DateSmartspaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DateSmartspaceView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f8349e = new SmartspaceTarget.Builder("date_card_794317_92634", new ComponentName(getContext(), getClass()), getContext().getUser()).setFeatureType(1).build();
        this.f8350f = new SmartspaceAction.Builder("dateId", "Date").setIntent(C0032e.e()).build();
        this.f8352h = new D(this, new Handler());
        context.getTheme().applyStyle(R.style.Smartspace, false);
        new F(context);
        new F(context);
    }
}
