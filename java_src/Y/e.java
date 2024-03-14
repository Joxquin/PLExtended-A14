package Y;

import androidx.profileinstaller.ProfileInstallReceiver;
/* loaded from: classes.dex */
public final class e implements g {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ProfileInstallReceiver f2262a;

    public e(ProfileInstallReceiver profileInstallReceiver) {
        this.f2262a = profileInstallReceiver;
    }

    @Override // Y.g
    public final void a(int i4, Object obj) {
        h.f2263a.a(i4, obj);
        this.f2262a.setResultCode(i4);
    }
}
