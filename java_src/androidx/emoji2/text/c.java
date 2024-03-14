package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.view.KeyEvent;
/* loaded from: classes.dex */
public final class c {
    public static boolean a(Editable editable, KeyEvent keyEvent, boolean z4) {
        d[] dVarArr;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!(selectionStart == -1 || selectionEnd == -1 || selectionStart != selectionEnd) && (dVarArr = (d[]) editable.getSpans(selectionStart, selectionEnd, d.class)) != null && dVarArr.length > 0) {
            for (d dVar : dVarArr) {
                int spanStart = editable.getSpanStart(dVar);
                int spanEnd = editable.getSpanEnd(dVar);
                if ((z4 && spanStart == selectionStart) || ((!z4 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }
}
