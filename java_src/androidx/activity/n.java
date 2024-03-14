package androidx.activity;

import a0.C0152e;
import a0.C0153f;
import a0.C0155h;
import a0.InterfaceC0154g;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.lifecycle.AbstractC0247m;
import androidx.lifecycle.C0252s;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.W;
/* loaded from: classes.dex */
public class n extends Dialog implements InterfaceC0251q, t, InterfaceC0154g {

    /* renamed from: d  reason: collision with root package name */
    public C0252s f2439d;

    /* renamed from: e  reason: collision with root package name */
    public final C0153f f2440e;

    /* renamed from: f  reason: collision with root package name */
    public final s f2441f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(int i4, Context context) {
        super(context, i4);
        kotlin.jvm.internal.h.e(context, "context");
        this.f2440e = new C0153f(this);
        this.f2441f = new s(new Runnable() { // from class: androidx.activity.m
            @Override // java.lang.Runnable
            public final void run() {
                n.d(n.this);
            }
        });
    }

    public static void d(n this$0) {
        kotlin.jvm.internal.h.e(this$0, "this$0");
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.h.e(view, "view");
        e();
        super.addContentView(view, layoutParams);
    }

    public final void e() {
        Window window = getWindow();
        kotlin.jvm.internal.h.b(window);
        View decorView = window.getDecorView();
        kotlin.jvm.internal.h.d(decorView, "window!!.decorView");
        W.b(decorView, this);
        Window window2 = getWindow();
        kotlin.jvm.internal.h.b(window2);
        View decorView2 = window2.getDecorView();
        kotlin.jvm.internal.h.d(decorView2, "window!!.decorView");
        u.a(decorView2, this);
        Window window3 = getWindow();
        kotlin.jvm.internal.h.b(window3);
        View decorView3 = window3.getDecorView();
        kotlin.jvm.internal.h.d(decorView3, "window!!.decorView");
        C0155h.a(decorView3, this);
    }

    @Override // androidx.lifecycle.InterfaceC0251q
    public final AbstractC0247m getLifecycle() {
        C0252s c0252s = this.f2439d;
        if (c0252s == null) {
            C0252s c0252s2 = new C0252s(this);
            this.f2439d = c0252s2;
            return c0252s2;
        }
        return c0252s;
    }

    @Override // androidx.activity.t
    public final s getOnBackPressedDispatcher() {
        return this.f2441f;
    }

    @Override // a0.InterfaceC0154g
    public final C0152e getSavedStateRegistry() {
        return this.f2440e.f2389b;
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.f2441f.b();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        s sVar = this.f2441f;
        OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
        kotlin.jvm.internal.h.d(onBackInvokedDispatcher, "onBackInvokedDispatcher");
        sVar.getClass();
        sVar.f2482e = onBackInvokedDispatcher;
        sVar.c();
        this.f2440e.b(bundle);
        C0252s c0252s = this.f2439d;
        if (c0252s == null) {
            c0252s = new C0252s(this);
            this.f2439d = c0252s;
        }
        c0252s.f(Lifecycle$Event.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        kotlin.jvm.internal.h.d(onSaveInstanceState, "super.onSaveInstanceState()");
        this.f2440e.c(onSaveInstanceState);
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        C0252s c0252s = this.f2439d;
        if (c0252s == null) {
            c0252s = new C0252s(this);
            this.f2439d = c0252s;
        }
        c0252s.f(Lifecycle$Event.ON_RESUME);
    }

    @Override // android.app.Dialog
    public void onStop() {
        C0252s c0252s = this.f2439d;
        if (c0252s == null) {
            c0252s = new C0252s(this);
            this.f2439d = c0252s;
        }
        c0252s.f(Lifecycle$Event.ON_DESTROY);
        this.f2439d = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(int i4) {
        e();
        super.setContentView(i4);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        kotlin.jvm.internal.h.e(view, "view");
        e();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.h.e(view, "view");
        e();
        super.setContentView(view, layoutParams);
    }
}
