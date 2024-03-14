package com.google.android.systemui.smartspace;

import K2.AbstractC0041n;
import K2.C0032e;
import K2.F;
import K2.t;
import L2.d;
import L2.f;
import L2.h;
import N2.a;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.utilities.Utilities;
import java.util.List;
import java.util.Locale;
import y0.e;
/* loaded from: classes.dex */
public class BcSmartspaceCard extends ConstraintLayout {

    /* renamed from: d  reason: collision with root package name */
    public AbstractC0041n f8270d;

    /* renamed from: e  reason: collision with root package name */
    public SmartspaceTarget f8271e;

    /* renamed from: f  reason: collision with root package name */
    public final F f8272f;

    /* renamed from: g  reason: collision with root package name */
    public final F f8273g;

    /* renamed from: h  reason: collision with root package name */
    public String f8274h;

    /* renamed from: i  reason: collision with root package name */
    public int f8275i;

    /* renamed from: j  reason: collision with root package name */
    public ViewGroup f8276j;

    /* renamed from: k  reason: collision with root package name */
    public ViewGroup f8277k;

    /* renamed from: l  reason: collision with root package name */
    public IcuDateTextView f8278l;

    /* renamed from: m  reason: collision with root package name */
    public TextView f8279m;

    /* renamed from: n  reason: collision with root package name */
    public TextView f8280n;

    /* renamed from: o  reason: collision with root package name */
    public DoubleShadowTextView f8281o;

    /* renamed from: p  reason: collision with root package name */
    public ViewGroup f8282p;

    /* renamed from: q  reason: collision with root package name */
    public ImageView f8283q;

    /* renamed from: r  reason: collision with root package name */
    public ImageView f8284r;

    /* renamed from: s  reason: collision with root package name */
    public TextView f8285s;

    /* renamed from: t  reason: collision with root package name */
    public d f8286t;

    /* renamed from: u  reason: collision with root package name */
    public String f8287u;

    /* renamed from: v  reason: collision with root package name */
    public float f8288v;

    /* renamed from: w  reason: collision with root package name */
    public n1.d f8289w;

    /* renamed from: x  reason: collision with root package name */
    public boolean f8290x;

    /* renamed from: y  reason: collision with root package name */
    public boolean f8291y;

    public BcSmartspaceCard(Context context) {
        this(context, null);
    }

    public static int r(d dVar, int i4) {
        List list;
        h hVar = dVar.f1320h;
        if (hVar == null || (list = hVar.f1328a) == null) {
            return 0;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            f fVar = (f) list.get(i5);
            if (fVar != null && fVar.f1325b == i4) {
                return i5 + 1;
            }
        }
        return 0;
    }

    public static int s(SmartspaceAction smartspaceAction) {
        if (smartspaceAction == null || smartspaceAction.getExtras() == null || smartspaceAction.getExtras().isEmpty()) {
            return -1;
        }
        return smartspaceAction.getExtras().getInt("subcardType", -1);
    }

    @Override // android.view.View
    public final AccessibilityNodeInfo createAccessibilityNodeInfo() {
        AccessibilityNodeInfo createAccessibilityNodeInfo = super.createAccessibilityNodeInfo();
        createAccessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", " ");
        return createAccessibilityNodeInfo;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8276j = (ViewGroup) findViewById(R.id.text_group);
        this.f8277k = (ViewGroup) findViewById(R.id.secondary_card_group);
        this.f8278l = (IcuDateTextView) findViewById(R.id.date);
        this.f8279m = (TextView) findViewById(R.id.title_text);
        this.f8280n = (TextView) findViewById(R.id.subtitle_text);
        this.f8281o = (DoubleShadowTextView) findViewById(R.id.base_action_icon_subtitle);
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.smartspace_extras_group);
        this.f8282p = viewGroup;
        if (viewGroup != null) {
            this.f8283q = (ImageView) viewGroup.findViewById(R.id.dnd_icon);
            this.f8284r = (ImageView) this.f8282p.findViewById(R.id.alarm_icon);
            this.f8285s = (TextView) this.f8282p.findViewById(R.id.alarm_text);
        }
    }

    public final void t(float f4) {
        this.f8288v = f4;
        SmartspaceTarget smartspaceTarget = this.f8271e;
        if (smartspaceTarget != null && smartspaceTarget.getBaseAction() != null && this.f8271e.getBaseAction().getExtras() != null) {
            Bundle extras = this.f8271e.getBaseAction().getExtras();
            if (this.f8279m != null && extras.getBoolean("hide_title_on_aod")) {
                this.f8279m.setAlpha(1.0f - f4);
            }
            if (this.f8280n != null && extras.getBoolean("hide_subtitle_on_aod")) {
                this.f8280n.setAlpha(1.0f - f4);
            }
        }
        ImageView imageView = this.f8283q;
        if (imageView != null) {
            imageView.setAlpha(this.f8288v);
        }
        if (this.f8276j == null) {
            return;
        }
        t.f(this.f8277k, (this.f8288v > 1.0f ? 1 : (this.f8288v == 1.0f ? 0 : -1)) == 0 || !this.f8291y ? 8 : 0);
        SmartspaceTarget smartspaceTarget2 = this.f8271e;
        if (smartspaceTarget2 == null || smartspaceTarget2.getFeatureType() != 30) {
            ViewGroup viewGroup = this.f8277k;
            if (viewGroup == null || viewGroup.getVisibility() == 8) {
                this.f8276j.setTranslationX(0.0f);
                return;
            }
            this.f8276j.setTranslationX(((PathInterpolator) e.f12937a).getInterpolation(this.f8288v) * this.f8277k.getWidth() * (isRtl() ? 1 : -1));
            this.f8277k.setAlpha(Utilities.clamp(((1.0f - this.f8288v) * 9.0f) - 6.0f, 0.0f, 1.0f));
        }
    }

    public final void u(SmartspaceTarget smartspaceTarget, SmartspaceAction smartspaceAction, d dVar) {
        if (smartspaceAction != null) {
            C0032e.g(this, smartspaceTarget, smartspaceAction, this.f8289w, "BcSmartspaceCard", dVar);
            TextView textView = this.f8279m;
            if (textView != null) {
                C0032e.g(textView, smartspaceTarget, smartspaceAction, this.f8289w, "BcSmartspaceCard", dVar);
            }
            TextView textView2 = this.f8280n;
            if (textView2 != null) {
                C0032e.g(textView2, smartspaceTarget, smartspaceAction, this.f8289w, "BcSmartspaceCard", dVar);
            }
        }
    }

    public final void v(int i4) {
        TextView textView = this.f8279m;
        if (textView != null) {
            textView.setTextColor(i4);
        }
        IcuDateTextView icuDateTextView = this.f8278l;
        if (icuDateTextView != null) {
            icuDateTextView.setTextColor(i4);
        }
        TextView textView2 = this.f8280n;
        if (textView2 != null) {
            textView2.setTextColor(i4);
        }
        DoubleShadowTextView doubleShadowTextView = this.f8281o;
        if (doubleShadowTextView != null) {
            doubleShadowTextView.setTextColor(i4);
        }
        AbstractC0041n abstractC0041n = this.f8270d;
        if (abstractC0041n != null) {
            abstractC0041n.u(i4);
        }
        this.f8275i = i4;
        y();
        TextView textView3 = this.f8285s;
        if (textView3 != null) {
            textView3.setTextColor(this.f8275i);
        }
        ImageView imageView = this.f8284r;
        if (imageView != null && imageView.getDrawable() != null) {
            imageView.getDrawable().setTint(this.f8275i);
            imageView.invalidate();
        }
        ImageView imageView2 = this.f8283q;
        if (imageView2 == null || imageView2.getDrawable() == null) {
            return;
        }
        imageView2.getDrawable().setTint(this.f8275i);
        imageView2.invalidate();
    }

    public final void w(CharSequence charSequence, CharSequence charSequence2, boolean z4) {
        TextView textView = this.f8280n;
        if (textView == null) {
            Log.w("BcSmartspaceCard", "No subtitle view to update");
            return;
        }
        textView.setText(charSequence);
        this.f8280n.setCompoundDrawablesRelative((TextUtils.isEmpty(charSequence) || !z4) ? null : this.f8272f, null, null, null);
        TextView textView2 = this.f8280n;
        SmartspaceTarget smartspaceTarget = this.f8271e;
        textView2.setMaxLines((smartspaceTarget == null || smartspaceTarget.getFeatureType() != 5 || this.f8290x) ? 1 : 2);
        a.a("BcSmartspaceCard", this.f8280n, charSequence, charSequence2);
        t.c(this.f8280n, z4 ? this.f8272f : null, isRtl());
    }

    public final void x(CharSequence charSequence, CharSequence charSequence2, boolean z4) {
        boolean z5;
        TextView textView = this.f8279m;
        if (textView == null) {
            Log.w("BcSmartspaceCard", "No title view to update");
            return;
        }
        textView.setText(charSequence);
        SmartspaceTarget smartspaceTarget = this.f8271e;
        SmartspaceAction headerAction = smartspaceTarget == null ? null : smartspaceTarget.getHeaderAction();
        Bundle extras = headerAction == null ? null : headerAction.getExtras();
        if (extras == null || !extras.containsKey("titleEllipsize")) {
            SmartspaceTarget smartspaceTarget2 = this.f8271e;
            if (smartspaceTarget2 != null && smartspaceTarget2.getFeatureType() == 2 && Locale.ENGLISH.getLanguage().equals(((ViewGroup) this).mContext.getResources().getConfiguration().locale.getLanguage())) {
                this.f8279m.setEllipsize(TextUtils.TruncateAt.MIDDLE);
            } else {
                this.f8279m.setEllipsize(TextUtils.TruncateAt.END);
            }
        } else {
            String string = extras.getString("titleEllipsize");
            try {
                this.f8279m.setEllipsize(TextUtils.TruncateAt.valueOf(string));
            } catch (IllegalArgumentException unused) {
                Log.w("BcSmartspaceCard", "Invalid TruncateAt value: " + string);
            }
        }
        boolean z6 = false;
        if (extras != null) {
            int i4 = extras.getInt("titleMaxLines");
            if (i4 != 0) {
                this.f8279m.setMaxLines(i4);
            }
            z5 = extras.getBoolean("disableTitleIcon");
        } else {
            z5 = false;
        }
        if (z4 && !z5) {
            z6 = true;
        }
        if (z6) {
            a.a("BcSmartspaceCard", this.f8279m, charSequence, charSequence2);
        }
        this.f8279m.setCompoundDrawablesRelative(z6 ? this.f8272f : null, null, null, null);
        t.c(this.f8279m, z6 ? this.f8272f : null, isRtl());
    }

    public final void y() {
        F f4;
        SmartspaceTarget smartspaceTarget = this.f8271e;
        if (smartspaceTarget == null || (f4 = this.f8272f) == null) {
            return;
        }
        if (smartspaceTarget.getFeatureType() != 1) {
            f4.setTint(this.f8275i);
        } else {
            f4.setTintList(null);
        }
        F f5 = this.f8273g;
        if (f5 == null) {
            return;
        }
        if (s(this.f8271e.getBaseAction()) != 1) {
            f5.setTint(this.f8275i);
        } else {
            f5.setTintList(null);
        }
    }

    public final void z() {
        SmartspaceTarget smartspaceTarget;
        if (this.f8282p == null) {
            return;
        }
        ImageView imageView = this.f8283q;
        boolean z4 = true;
        boolean z5 = imageView != null && imageView.getVisibility() == 0;
        ImageView imageView2 = this.f8284r;
        boolean z6 = imageView2 != null && imageView2.getVisibility() == 0;
        if ((!z5 && !z6) || (this.f8290x && ((smartspaceTarget = this.f8271e) == null || smartspaceTarget.getFeatureType() != 1))) {
            z4 = false;
        }
        if (!z4) {
            t.f(this.f8282p, 8);
            return;
        }
        t.f(this.f8282p, 0);
        TextView textView = this.f8285s;
        if (textView != null) {
            textView.setTextColor(this.f8275i);
        }
        ImageView imageView3 = this.f8284r;
        if (imageView3 != null && imageView3.getDrawable() != null) {
            imageView3.getDrawable().setTint(this.f8275i);
            imageView3.invalidate();
        }
        ImageView imageView4 = this.f8283q;
        if (imageView4 == null || imageView4.getDrawable() == null) {
            return;
        }
        imageView4.getDrawable().setTint(this.f8275i);
        imageView4.invalidate();
    }

    public BcSmartspaceCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8270d = null;
        this.f8274h = "";
        this.f8275i = GraphicsUtils.getAttrColor(16842806, getContext());
        this.f8276j = null;
        this.f8277k = null;
        this.f8278l = null;
        this.f8279m = null;
        this.f8280n = null;
        this.f8281o = null;
        this.f8282p = null;
        this.f8283q = null;
        this.f8284r = null;
        this.f8285s = null;
        this.f8287u = null;
        if (!SystemProperties.getBoolean("persist.sysui.ss.dw_decoupled", true)) {
            context.getTheme().applyStyle(R.style.SmartspaceWithDateWeather, false);
        } else {
            context.getTheme().applyStyle(R.style.Smartspace, false);
        }
        this.f8272f = new F(context);
        this.f8273g = new F(context);
        new F(context);
        new F(context);
    }
}
