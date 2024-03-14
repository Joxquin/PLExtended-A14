package N2;

import android.util.Log;
import android.view.View;
import com.android.systemui.shared.R;
import java.util.Arrays;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class a {
    public static final void a(String str, View view, CharSequence charSequence, CharSequence charSequence2) {
        CharSequence string;
        h.e(view, "view");
        boolean z4 = false;
        if (charSequence == null || charSequence.length() == 0) {
            string = charSequence2;
        } else {
            if (charSequence2 == null || charSequence2.length() == 0) {
                z4 = true;
            }
            string = z4 ? charSequence : view.getContext().getString(R.string.generic_smartspace_concatenated_desc, charSequence2, charSequence);
        }
        String format = String.format("setFormattedContentDescription: text=%s, iconDescription=%s, contentDescription=%s", Arrays.copyOf(new Object[]{charSequence, charSequence2, string}, 3));
        h.d(format, "format(format, *args)");
        Log.i(str, format);
        view.setContentDescription(string);
    }
}
