package Z0;

import com.android.launcher3.taskbar.bubbles.BubbleBarBubble;
import java.util.Objects;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return Objects.nonNull((BubbleBarBubble) obj);
    }
}
