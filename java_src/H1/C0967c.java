package h1;

import com.android.launcher3.model.WidgetItem;
import java.util.function.Predicate;
/* renamed from: h1.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0967c implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((WidgetItem) obj).widgetInfo != null;
    }
}
