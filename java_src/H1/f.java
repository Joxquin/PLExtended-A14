package H1;

import android.app.ActivityManager;
import android.util.SparseBooleanArray;
import android.window.TransitionInfo;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final class f implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final SparseBooleanArray f546a = new SparseBooleanArray();

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        ActivityManager.RunningTaskInfo taskInfo = ((TransitionInfo.Change) obj).getTaskInfo();
        if (taskInfo == null) {
            return false;
        }
        boolean z4 = this.f546a.get(taskInfo.taskId);
        if (taskInfo.hasParentTask()) {
            this.f546a.put(taskInfo.parentTaskId, true);
        }
        return !z4;
    }
}
