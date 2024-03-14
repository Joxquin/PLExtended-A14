package com.android.launcher3.views;

import com.android.launcher3.views.AbstractSlideInView;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5333a;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5333a) {
            case 0:
            default:
                ((AbstractSlideInView.OnCloseListener) obj).onSlideInViewClosed();
                return;
        }
    }
}
