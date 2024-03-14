package k0;

import com.airbnb.lottie.LottieAnimationView;
/* renamed from: k0.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1194i implements InterfaceC1180E {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ LottieAnimationView f11112a;

    public C1194i(LottieAnimationView lottieAnimationView) {
        this.f11112a = lottieAnimationView;
    }

    @Override // k0.InterfaceC1180E
    public final void a(Object obj) {
        Throwable th = (Throwable) obj;
        LottieAnimationView lottieAnimationView = this.f11112a;
        int i4 = lottieAnimationView.f4279j;
        if (i4 != 0) {
            lottieAnimationView.setImageResource(i4);
        }
        InterfaceC1180E interfaceC1180E = lottieAnimationView.f4278i;
        if (interfaceC1180E == null) {
            interfaceC1180E = LottieAnimationView.f4275u;
        }
        interfaceC1180E.a(th);
    }
}
