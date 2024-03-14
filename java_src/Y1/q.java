package Y1;

import com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget;
import com.google.protobuf.M;
/* loaded from: classes.dex */
public final class q implements M {

    /* renamed from: a  reason: collision with root package name */
    public static final q f2299a = new q();

    @Override // com.google.protobuf.M
    public final boolean isInRange(int i4) {
        return (i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? null : SearchConfigProto$TapTarget.PASTE : SearchConfigProto$TapTarget.TEXTBOX : SearchConfigProto$TapTarget.LOGO : SearchConfigProto$TapTarget.NONE) != null;
    }
}
