package z3;

import com.google.protobuf.M;
import quality.ui.doodles.tools.crushinator.Crushinator$StartOn;
/* loaded from: classes.dex */
public final class g implements M {

    /* renamed from: a  reason: collision with root package name */
    public static final g f13001a = new g();

    @Override // com.google.protobuf.M
    public final boolean isInRange(int i4) {
        return (i4 != 0 ? i4 != 1 ? null : Crushinator$StartOn.HOME : Crushinator$StartOn.DEFAULT) != null;
    }
}
