package D2;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes.dex */
public final class a implements Handler.Callback {
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i4 = message.what;
        if (i4 == 0) {
            ((e) message.obj).getClass();
            throw null;
        } else if (i4 != 1) {
            return false;
        } else {
            ((e) message.obj).getClass();
            throw null;
        }
    }
}
