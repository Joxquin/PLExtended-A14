package r0;

import com.airbnb.lottie.model.content.MergePaths$MergePathsMode;
import m0.InterfaceC1303d;
import w0.C1446c;
/* renamed from: r0.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1377h implements InterfaceC1372c {

    /* renamed from: a  reason: collision with root package name */
    public final MergePaths$MergePathsMode f12101a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f12102b;

    public C1377h(String str, MergePaths$MergePathsMode mergePaths$MergePathsMode, boolean z4) {
        this.f12101a = mergePaths$MergePathsMode;
        this.f12102b = z4;
    }

    @Override // r0.InterfaceC1372c
    public final InterfaceC1303d a(com.airbnb.lottie.a aVar, s0.b bVar) {
        if (aVar.f4327o) {
            return new m0.m(this);
        }
        C1446c.b("Animation contains merge paths but they are disabled.");
        return null;
    }

    public final String toString() {
        return "MergePaths{mode=" + this.f12101a + '}';
    }
}
