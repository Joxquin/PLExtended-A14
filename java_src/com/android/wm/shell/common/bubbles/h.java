package com.android.wm.shell.common.bubbles;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.Log;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.dynamicanimation.animation.m;
import com.android.wm.shell.animation.l;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class h extends FrameLayout {

    /* renamed from: m  reason: collision with root package name */
    public static final String f6331m = kotlin.jvm.internal.j.a(h.class).b();

    /* renamed from: d  reason: collision with root package name */
    public final e f6332d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f6333e;

    /* renamed from: f  reason: collision with root package name */
    public f f6334f;

    /* renamed from: g  reason: collision with root package name */
    public final l f6335g;

    /* renamed from: h  reason: collision with root package name */
    public final com.android.wm.shell.animation.g f6336h;

    /* renamed from: i  reason: collision with root package name */
    public final long f6337i;

    /* renamed from: j  reason: collision with root package name */
    public final WindowManager f6338j;

    /* renamed from: k  reason: collision with root package name */
    public GradientDrawable f6339k;

    /* renamed from: l  reason: collision with root package name */
    public final g f6340l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Context context) {
        super(context);
        kotlin.jvm.internal.h.e(context, "context");
        e eVar = new e(context);
        this.f6332d = eVar;
        m3.l lVar = l.f6287m;
        this.f6335g = com.android.wm.shell.animation.c.a(eVar);
        this.f6336h = new com.android.wm.shell.animation.g(200.0f, 0.75f);
        this.f6337i = 200L;
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.h.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f6338j = (WindowManager) systemService;
        this.f6340l = new g();
        setClipToPadding(false);
        setClipChildren(false);
        setVisibility(4);
        addView(eVar);
    }

    public final void a() {
        if (this.f6333e) {
            GradientDrawable gradientDrawable = this.f6339k;
            if (gradientDrawable == null) {
                Log.e(f6331m, "The view isn't ready. Should be called after `setup`");
            }
            if (gradientDrawable == null) {
                return;
            }
            this.f6333e = false;
            ObjectAnimator ofInt = ObjectAnimator.ofInt(gradientDrawable, this.f6340l, gradientDrawable.getAlpha(), 0);
            ofInt.setDuration(this.f6337i);
            ofInt.start();
            l lVar = this.f6335g;
            androidx.dynamicanimation.animation.h TRANSLATION_Y = m.f3184n;
            kotlin.jvm.internal.h.d(TRANSLATION_Y, "TRANSLATION_Y");
            com.android.wm.shell.animation.g config = this.f6336h;
            lVar.getClass();
            kotlin.jvm.internal.h.e(config, "config");
            lVar.g(TRANSLATION_Y, getHeight(), 0.0f, config);
            m3.a[] aVarArr = {new m3.a() { // from class: com.android.wm.shell.common.bubbles.DismissView$hide$1
                {
                    super(0);
                }

                @Override // m3.a
                public final Object invoke() {
                    h.this.setVisibility(4);
                    return e3.f.f9037a;
                }
            }};
            ArrayList arrayList = lVar.f6295h;
            ArrayList arrayList2 = new ArrayList();
            m3.a aVar = aVarArr[0];
            if (aVar != null) {
                arrayList2.add(aVar);
            }
            arrayList.addAll(arrayList2);
            lVar.h();
        }
    }
}
