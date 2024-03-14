package com.android.quickstep.util;

import android.util.Log;
import com.android.systemui.shared.recents.model.Task;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public class TaskKeyLruCache {
    private final MyLinkedHashMap mMap;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Entry {
        final Task.TaskKey mKey;
        Object mValue;

        public Entry(Task.TaskKey taskKey, Object obj) {
            this.mKey = taskKey;
            this.mValue = obj;
        }

        public int hashCode() {
            return this.mKey.id;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class MyLinkedHashMap extends LinkedHashMap {
        private final int mMaxSize;

        public MyLinkedHashMap(int i4) {
            super(0, 0.75f, true);
            this.mMaxSize = i4;
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry entry) {
            return size() > this.mMaxSize;
        }
    }

    public TaskKeyLruCache(int i4) {
        this.mMap = new MyLinkedHashMap(i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$removeAll$0(Predicate predicate, Map.Entry entry) {
        return predicate.test(((Entry) entry.getValue()).mKey);
    }

    public synchronized void evictAll() {
        this.mMap.clear();
    }

    public synchronized Object getAndInvalidateIfModified(Task.TaskKey taskKey) {
        Entry entry = (Entry) this.mMap.get(Integer.valueOf(taskKey.id));
        if (entry != null) {
            Task.TaskKey taskKey2 = entry.mKey;
            if (taskKey2.windowingMode == taskKey.windowingMode && taskKey2.lastActiveTime == taskKey.lastActiveTime) {
                return entry.mValue;
            }
        }
        remove(taskKey);
        return null;
    }

    public final synchronized void put(Task.TaskKey taskKey, Object obj) {
        if (taskKey == null || obj == null) {
            Log.e("TaskKeyCache", "Unexpected null key or value: " + taskKey + ", " + obj);
        } else {
            this.mMap.put(Integer.valueOf(taskKey.id), new Entry(taskKey, obj));
        }
    }

    public synchronized void remove(Task.TaskKey taskKey) {
        this.mMap.remove(Integer.valueOf(taskKey.id));
    }

    public synchronized void removeAll(final Predicate predicate) {
        this.mMap.entrySet().removeIf(new Predicate() { // from class: com.android.quickstep.util.Y
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$removeAll$0;
                lambda$removeAll$0 = TaskKeyLruCache.lambda$removeAll$0(predicate, (Map.Entry) obj);
                return lambda$removeAll$0;
            }
        });
    }

    public synchronized void updateIfAlreadyInCache(int i4, Object obj) {
        Entry entry = (Entry) this.mMap.get(Integer.valueOf(i4));
        if (entry != null) {
            entry.mValue = obj;
        }
    }
}
