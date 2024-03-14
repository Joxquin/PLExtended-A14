package com.google.android.systemui.smartspace.uitemplate;

import K2.AbstractC0041n;
import K2.B;
import K2.C0032e;
import K2.F;
import K2.t;
import L2.b;
import L2.c;
import L2.d;
import L2.f;
import L2.h;
import N2.a;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.SmartspaceUtils;
import android.app.smartspace.uitemplatedata.BaseTemplateData;
import android.app.smartspace.uitemplatedata.Icon;
import android.app.smartspace.uitemplatedata.Text;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.SystemProperties;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.utilities.Utilities;
import com.google.android.systemui.smartspace.DoubleShadowTextView;
import com.google.android.systemui.smartspace.IcuDateTextView;
import java.util.List;
import y0.e;
/* loaded from: classes.dex */
public class BaseTemplateCard extends ConstraintLayout {

    /* renamed from: d  reason: collision with root package name */
    public AbstractC0041n f8386d;

    /* renamed from: e  reason: collision with root package name */
    public SmartspaceTarget f8387e;

    /* renamed from: f  reason: collision with root package name */
    public BaseTemplateData f8388f;

    /* renamed from: g  reason: collision with root package name */
    public int f8389g;

    /* renamed from: h  reason: collision with root package name */
    public d f8390h;

    /* renamed from: i  reason: collision with root package name */
    public int f8391i;

    /* renamed from: j  reason: collision with root package name */
    public String f8392j;

    /* renamed from: k  reason: collision with root package name */
    public ViewGroup f8393k;

    /* renamed from: l  reason: collision with root package name */
    public ViewGroup f8394l;

    /* renamed from: m  reason: collision with root package name */
    public IcuDateTextView f8395m;

    /* renamed from: n  reason: collision with root package name */
    public DoubleShadowTextView f8396n;

    /* renamed from: o  reason: collision with root package name */
    public ViewGroup f8397o;

    /* renamed from: p  reason: collision with root package name */
    public DoubleShadowTextView f8398p;

    /* renamed from: q  reason: collision with root package name */
    public DoubleShadowTextView f8399q;

    /* renamed from: r  reason: collision with root package name */
    public ViewGroup f8400r;

    /* renamed from: s  reason: collision with root package name */
    public ImageView f8401s;

    /* renamed from: t  reason: collision with root package name */
    public ImageView f8402t;

    /* renamed from: u  reason: collision with root package name */
    public DoubleShadowTextView f8403u;

    /* renamed from: v  reason: collision with root package name */
    public DoubleShadowTextView f8404v;

    /* renamed from: w  reason: collision with root package name */
    public String f8405w;

    /* renamed from: x  reason: collision with root package name */
    public float f8406x;

    /* renamed from: y  reason: collision with root package name */
    public boolean f8407y;

    /* renamed from: z  reason: collision with root package name */
    public boolean f8408z;

    public BaseTemplateCard(Context context) {
        this(context, null);
    }

    public static boolean x(BaseTemplateData.SubItemInfo subItemInfo) {
        if (subItemInfo == null || subItemInfo.getIcon() == null) {
            return false;
        }
        return subItemInfo.getIcon().shouldTint();
    }

    public final void A() {
        if (this.f8400r == null) {
            return;
        }
        ImageView imageView = this.f8401s;
        boolean z4 = true;
        boolean z5 = imageView != null && imageView.getVisibility() == 0;
        ImageView imageView2 = this.f8402t;
        boolean z6 = imageView2 != null && imageView2.getVisibility() == 0;
        DoubleShadowTextView doubleShadowTextView = this.f8404v;
        boolean z7 = doubleShadowTextView != null && doubleShadowTextView.getVisibility() == 0;
        if ((!z5 && !z6 && !z7) || (this.f8407y && this.f8395m == null)) {
            z4 = false;
        }
        if (!z4) {
            t.f(this.f8400r, 8);
            return;
        }
        t.f(this.f8400r, 0);
        z();
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
        this.f8393k = (ViewGroup) findViewById(R.id.text_group);
        this.f8394l = (ViewGroup) findViewById(R.id.secondary_card_group);
        this.f8395m = (IcuDateTextView) findViewById(R.id.date);
        this.f8396n = (DoubleShadowTextView) findViewById(R.id.title_text);
        this.f8397o = (ViewGroup) findViewById(R.id.smartspace_subtitle_group);
        this.f8398p = (DoubleShadowTextView) findViewById(R.id.subtitle_text);
        this.f8399q = (DoubleShadowTextView) findViewById(R.id.base_action_icon_subtitle);
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.smartspace_extras_group);
        this.f8400r = viewGroup;
        if (viewGroup != null) {
            this.f8401s = (ImageView) viewGroup.findViewById(R.id.dnd_icon);
            this.f8402t = (ImageView) this.f8400r.findViewById(R.id.alarm_icon);
            this.f8403u = (DoubleShadowTextView) this.f8400r.findViewById(R.id.alarm_text);
            this.f8404v = (DoubleShadowTextView) this.f8400r.findViewById(R.id.supplemental_line_text);
        }
    }

    public final d r() {
        d dVar = this.f8390h;
        if (dVar != null) {
            return dVar;
        }
        c cVar = new c();
        cVar.f1305b = C0032e.d(this.f8405w, this.f8406x);
        cVar.f1308e = this.f8389g;
        getContext().getPackageManager();
        SmartspaceTarget smartspaceTarget = this.f8387e;
        cVar.f1310g = -1;
        cVar.f1312i = b.b(smartspaceTarget.getTemplateData());
        return cVar.a();
    }

    public final int s(BaseTemplateData.SubItemInfo subItemInfo) {
        h hVar;
        List list;
        d dVar = this.f8390h;
        if (dVar != null && (hVar = dVar.f1320h) != null && (list = hVar.f1328a) != null && !list.isEmpty() && subItemInfo != null && subItemInfo.getLoggingInfo() != null) {
            int featureType = subItemInfo.getLoggingInfo().getFeatureType();
            d dVar2 = this.f8390h;
            if (featureType != dVar2.f1317e) {
                List list2 = dVar2.f1320h.f1328a;
                BaseTemplateData.SubItemLoggingInfo loggingInfo = subItemInfo.getLoggingInfo();
                for (int i4 = 0; i4 < list2.size(); i4++) {
                    f fVar = (f) list2.get(i4);
                    if (fVar.f1324a == loggingInfo.getInstanceId()) {
                        if (fVar.f1325b == loggingInfo.getFeatureType()) {
                            return i4 + 1;
                        }
                    }
                }
            }
        }
        return 0;
    }

    public final void t(DoubleShadowTextView doubleShadowTextView) {
        if (doubleShadowTextView == null) {
            return;
        }
        doubleShadowTextView.setCompoundDrawablesRelative(null, null, null, null);
        doubleShadowTextView.setOnClickListener(null);
        doubleShadowTextView.setContentDescription(null);
        doubleShadowTextView.setText((CharSequence) null);
        t.c(doubleShadowTextView, null, isRtl());
    }

    public final void u(float f4) {
        this.f8406x = f4;
        SmartspaceTarget smartspaceTarget = this.f8387e;
        if (smartspaceTarget != null && smartspaceTarget.getBaseAction() != null && this.f8387e.getBaseAction().getExtras() != null) {
            Bundle extras = this.f8387e.getBaseAction().getExtras();
            if (this.f8396n != null && extras.getBoolean("hide_title_on_aod")) {
                this.f8396n.setAlpha(1.0f - f4);
            }
            if (this.f8398p != null && extras.getBoolean("hide_subtitle_on_aod")) {
                this.f8398p.setAlpha(1.0f - f4);
            }
        }
        ImageView imageView = this.f8401s;
        if (imageView != null) {
            imageView.setAlpha(this.f8406x);
        }
        if (this.f8393k == null) {
            return;
        }
        t.f(this.f8394l, (this.f8406x > 1.0f ? 1 : (this.f8406x == 1.0f ? 0 : -1)) == 0 || !this.f8408z ? 8 : 0);
        ViewGroup viewGroup = this.f8394l;
        if (viewGroup == null || viewGroup.getVisibility() == 8) {
            this.f8393k.setTranslationX(0.0f);
            return;
        }
        this.f8393k.setTranslationX(((PathInterpolator) e.f12937a).getInterpolation(this.f8406x) * this.f8394l.getWidth() * (isRtl() ? 1 : -1));
        this.f8394l.setAlpha(Utilities.clamp(((1.0f - this.f8406x) * 9.0f) - 6.0f, 0.0f, 1.0f));
    }

    public final void v(int i4) {
        this.f8391i = i4;
        DoubleShadowTextView doubleShadowTextView = this.f8396n;
        if (doubleShadowTextView != null) {
            doubleShadowTextView.setTextColor(i4);
            BaseTemplateData baseTemplateData = this.f8388f;
            if (baseTemplateData != null) {
                y(this.f8396n, x(baseTemplateData.getPrimaryItem()));
            }
        }
        IcuDateTextView icuDateTextView = this.f8395m;
        if (icuDateTextView != null) {
            icuDateTextView.setTextColor(i4);
        }
        DoubleShadowTextView doubleShadowTextView2 = this.f8398p;
        if (doubleShadowTextView2 != null) {
            doubleShadowTextView2.setTextColor(i4);
            BaseTemplateData baseTemplateData2 = this.f8388f;
            if (baseTemplateData2 != null) {
                y(this.f8398p, x(baseTemplateData2.getSubtitleItem()));
            }
        }
        DoubleShadowTextView doubleShadowTextView3 = this.f8399q;
        if (doubleShadowTextView3 != null) {
            doubleShadowTextView3.setTextColor(i4);
            BaseTemplateData baseTemplateData3 = this.f8388f;
            if (baseTemplateData3 != null) {
                y(this.f8399q, x(baseTemplateData3.getSubtitleSupplementalItem()));
            }
        }
        z();
    }

    public final void w(DoubleShadowTextView doubleShadowTextView, BaseTemplateData.SubItemInfo subItemInfo, B b4) {
        if (doubleShadowTextView == null) {
            Log.d("SsBaseTemplateCard", "No text view can be set up");
            return;
        }
        t(doubleShadowTextView);
        if (subItemInfo == null) {
            Log.d("SsBaseTemplateCard", "Passed-in item info is null");
            t.f(doubleShadowTextView, 8);
            return;
        }
        Text text = subItemInfo.getText();
        t.e(doubleShadowTextView, subItemInfo.getText());
        if (!SmartspaceUtils.isEmpty(text)) {
            doubleShadowTextView.setTextColor(this.f8391i);
        }
        Icon icon = subItemInfo.getIcon();
        if (icon != null) {
            F f4 = new F(getContext());
            f4.b(C0032e.b(getContext(), icon.getIcon()));
            doubleShadowTextView.setCompoundDrawablesRelative(f4, null, null, null);
            a.a("SsBaseTemplateCard", doubleShadowTextView, SmartspaceUtils.isEmpty(text) ? "" : text.getText(), icon.getContentDescription());
            y(doubleShadowTextView, icon.shouldTint());
            t.c(doubleShadowTextView, f4, isRtl());
        }
        t.f(doubleShadowTextView, 0);
        C0032e.i(doubleShadowTextView, this.f8387e, subItemInfo.getTapAction(), b4, "SsBaseTemplateCard", this.f8390h, s(subItemInfo));
    }

    public final void y(DoubleShadowTextView doubleShadowTextView, boolean z4) {
        Drawable[] compoundDrawablesRelative;
        for (Drawable drawable : doubleShadowTextView.getCompoundDrawablesRelative()) {
            if (drawable != null) {
                if (z4) {
                    drawable.setTint(this.f8391i);
                } else {
                    drawable.setTintList(null);
                }
            }
        }
    }

    public final void z() {
        ImageView imageView = this.f8402t;
        if (imageView != null && imageView.getDrawable() != null) {
            imageView.getDrawable().setTint(this.f8391i);
            imageView.invalidate();
        }
        DoubleShadowTextView doubleShadowTextView = this.f8403u;
        if (doubleShadowTextView != null) {
            doubleShadowTextView.setTextColor(this.f8391i);
        }
        ImageView imageView2 = this.f8401s;
        if (imageView2 != null && imageView2.getDrawable() != null) {
            imageView2.getDrawable().setTint(this.f8391i);
            imageView2.invalidate();
        }
        DoubleShadowTextView doubleShadowTextView2 = this.f8404v;
        if (doubleShadowTextView2 != null) {
            doubleShadowTextView2.setTextColor(this.f8391i);
            if (b.a(this.f8388f)) {
                y(this.f8404v, x(this.f8388f.getSupplementalLineItem()));
            }
        }
    }

    public BaseTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8386d = null;
        this.f8389g = 0;
        this.f8390h = null;
        this.f8391i = GraphicsUtils.getAttrColor(16842806, getContext());
        this.f8392j = "";
        this.f8393k = null;
        this.f8394l = null;
        this.f8395m = null;
        this.f8396n = null;
        this.f8397o = null;
        this.f8398p = null;
        this.f8399q = null;
        this.f8400r = null;
        this.f8401s = null;
        this.f8402t = null;
        this.f8403u = null;
        this.f8404v = null;
        if (!SystemProperties.getBoolean("persist.sysui.ss.dw_decoupled", true)) {
            context.getTheme().applyStyle(R.style.SmartspaceWithDateWeather, false);
        } else {
            context.getTheme().applyStyle(R.style.Smartspace, false);
        }
    }
}
