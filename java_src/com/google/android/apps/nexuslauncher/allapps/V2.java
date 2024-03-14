package com.google.android.apps.nexuslauncher.allapps;

import android.widget.RelativeLayout;
/* loaded from: classes.dex */
public final /* synthetic */ class V2 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6958d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f6959e;

    public /* synthetic */ V2(int i4, Object obj) {
        this.f6958d = i4;
        this.f6959e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6958d) {
            case 0:
                int i4 = UniversalSearchInputView.f6900f0;
                ((UniversalSearchInputView) this.f6959e).m();
                return;
            case 1:
                UniversalSearchInputView universalSearchInputView = (UniversalSearchInputView) this.f6959e;
                int i5 = UniversalSearchInputView.f6900f0;
                universalSearchInputView.p();
                universalSearchInputView.updateState();
                return;
            default:
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f6959e;
                int i6 = UniversalSearchInputView.f6900f0;
                layoutParams.removeRule(14);
                layoutParams.addRule(20);
                return;
        }
    }
}
