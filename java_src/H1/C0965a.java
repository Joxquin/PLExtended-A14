package h1;

import android.content.Context;
import android.content.res.Resources;
import com.android.launcher3.util.PluralMessageFormat;
import com.android.launcher3.widget.model.WidgetsListHeaderEntry;
import com.android.systemui.shared.R;
import java.util.List;
import java.util.function.BiFunction;
import java.util.stream.Collectors;
/* renamed from: h1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0965a implements BiFunction {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f9487a;

    public /* synthetic */ C0965a(int i4) {
        this.f9487a = i4;
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f9487a) {
            case 0:
                Context context = (Context) obj;
                return (String) ((WidgetsListHeaderEntry) obj2).mWidgets.stream().map(new C0966b()).sorted().collect(Collectors.joining(", "));
            default:
                Context context2 = (Context) obj;
                List list = ((WidgetsListHeaderEntry) obj2).mWidgets;
                int count = (int) list.stream().filter(new C0967c()).count();
                int max = Math.max(0, list.size() - count);
                Resources resources = context2.getResources();
                if (count == 0 && max == 0) {
                    return null;
                }
                return (count <= 0 || max <= 0) ? count > 0 ? PluralMessageFormat.getIcuPluralString(context2, R.string.widgets_count, count) : PluralMessageFormat.getIcuPluralString(context2, R.string.shortcuts_count, max) : resources.getString(R.string.widgets_and_shortcuts_count, PluralMessageFormat.getIcuPluralString(context2, R.string.widgets_count, count), PluralMessageFormat.getIcuPluralString(context2, R.string.shortcuts_count, max));
        }
    }
}
