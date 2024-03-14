package z0;

import android.app.search.SearchAction;
import android.os.Bundle;
import java.util.Objects;
/* renamed from: z0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1494b {
    public static Bundle a(SearchAction searchAction) {
        return searchAction == null ? Bundle.EMPTY : (Bundle) Objects.requireNonNullElse(searchAction.getExtras(), Bundle.EMPTY);
    }
}
