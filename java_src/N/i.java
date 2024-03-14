package N;

import android.view.ActionMode;
import android.widget.TextView;
/* loaded from: classes.dex */
public final class i {
    public static void a(TextView textView, int i4) {
        L.f.a(i4);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i4 != fontMetricsInt) {
            textView.setLineSpacing(i4 - fontMetricsInt, 1.0f);
        }
    }

    public static ActionMode.Callback b(ActionMode.Callback callback) {
        if (callback instanceof h) {
            ((h) callback).getClass();
            return null;
        }
        return callback;
    }
}
