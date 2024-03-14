package com.google.android.apps.nexuslauncher.allapps;

import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class c3 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7020a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ UniversalSearchInputView f7021b;

    public /* synthetic */ c3(UniversalSearchInputView universalSearchInputView, int i4) {
        this.f7020a = i4;
        this.f7021b = universalSearchInputView;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f7020a) {
            case 0:
                Boolean bool = (Boolean) obj;
                this.f7021b.f6941v.getBackground().setState(new int[0]);
                return;
            case 1:
                Boolean bool2 = (Boolean) obj;
                this.f7021b.f6942w.f7595m.setCursorVisible(true);
                return;
            case 2:
                UniversalSearchInputView universalSearchInputView = this.f7021b;
                Boolean bool3 = (Boolean) obj;
                universalSearchInputView.f6943x.setText((CharSequence) null);
                universalSearchInputView.f6942w.removeView(universalSearchInputView.f6943x);
                return;
            default:
                Boolean bool4 = (Boolean) obj;
                this.f7021b.f6942w.f7595m.setCursorVisible(true);
                return;
        }
    }
}
