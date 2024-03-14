package com.android.quickstep.interaction;

import android.view.View;
import e.DialogInterfaceC0821m;
/* loaded from: classes.dex */
public final /* synthetic */ class v implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5699d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5700e;

    public /* synthetic */ v(int i4, Object obj) {
        this.f5699d = i4;
        this.f5700e = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f5699d) {
            case 0:
                ((TutorialController) this.f5700e).onActionButtonClicked(view);
                return;
            case 1:
                ((TutorialController) this.f5700e).lambda$new$0(view);
                return;
            default:
                ((DialogInterfaceC0821m) this.f5700e).dismiss();
                return;
        }
    }
}
