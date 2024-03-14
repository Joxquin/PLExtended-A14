package com.google.android.systemui.smartspace;

import K2.H;
import K2.I;
import K2.J;
import android.content.Context;
import android.content.IntentFilter;
import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.os.Handler;
import android.os.PowerManager;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextView;
import com.android.systemui.shared.R;
import java.util.Locale;
import java.util.Objects;
/* loaded from: classes.dex */
public class IcuDateTextView extends DoubleShadowTextView {

    /* renamed from: t  reason: collision with root package name */
    public static final /* synthetic */ int f8360t = 0;

    /* renamed from: k  reason: collision with root package name */
    public boolean f8361k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f8362l;

    /* renamed from: m  reason: collision with root package name */
    public final I f8363m;

    /* renamed from: n  reason: collision with root package name */
    public DateFormat f8364n;

    /* renamed from: o  reason: collision with root package name */
    public String f8365o;

    /* renamed from: p  reason: collision with root package name */
    public final H f8366p;

    /* renamed from: q  reason: collision with root package name */
    public Handler f8367q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f8368r;

    /* renamed from: s  reason: collision with root package name */
    public final J f8369s;

    public IcuDateTextView(Context context) {
        this(context, null);
    }

    public final void a(boolean z4) {
        if (this.f8364n == null || z4) {
            DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(getContext().getString(R.string.smartspace_icu_date_pattern), Locale.getDefault());
            this.f8364n = instanceForSkeleton;
            instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE);
        }
        if (isShown()) {
            String format = this.f8364n.format(Long.valueOf(System.currentTimeMillis()));
            if (Objects.equals(this.f8365o, format)) {
                return;
            }
            this.f8365o = format;
            setText(format);
            setContentDescription(format);
        }
    }

    public final void b() {
        Handler handler = this.f8367q;
        if (handler == null) {
            return;
        }
        handler.removeCallbacks(this.f8366p);
        if ((this.f8368r || (this.f8361k && this.f8362l)) && isAggregatedVisible()) {
            this.f8366p.run();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f8361k) {
            try {
                getContext().getContentResolver().registerContentObserver(Settings.Secure.getUriFor("doze_always_on"), false, this.f8363m, -1);
            } catch (Exception e4) {
                Log.w("IcuDateTextView", "Unable to register DOZE_ALWAYS_ON content observer: ", e4);
            }
            Context context = getContext();
            this.f8362l = Settings.Secure.getIntForUser(context.getContentResolver(), "doze_always_on", 0, context.getUserId()) == 1;
        }
        this.f8367q = new Handler();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        getContext().registerReceiver(this.f8369s, intentFilter);
        this.f8368r = ((PowerManager) ((TextView) this).mContext.getSystemService(PowerManager.class)).isInteractive();
        a(true);
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f8367q != null) {
            getContext().unregisterReceiver(this.f8369s);
            this.f8367q = null;
        }
        if (this.f8361k) {
            getContext().getContentResolver().unregisterContentObserver(this.f8363m);
        }
    }

    @Override // android.view.View
    public final void onVisibilityAggregated(boolean z4) {
        super.onVisibilityAggregated(z4);
        b();
    }

    public IcuDateTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f8363m = new I(this, new Handler());
        this.f8366p = new H(this);
        this.f8369s = new J(this);
    }
}
