package com.android.quickstep.util;

import android.view.MotionEvent;
import com.android.systemui.shared.system.InputChannelCompat;
import java.util.ArrayList;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class CachedEventDispatcher {
    private ArrayList mCache;
    private Consumer mConsumer;
    private MotionEvent mLastEvent;

    public void dispatchEvent(MotionEvent motionEvent) {
        Consumer consumer = this.mConsumer;
        if (consumer != null) {
            consumer.accept(motionEvent);
            return;
        }
        MotionEvent motionEvent2 = this.mLastEvent;
        if (motionEvent2 == null || !InputChannelCompat.mergeMotionEvent(motionEvent, motionEvent2)) {
            if (this.mCache == null) {
                this.mCache = new ArrayList();
            }
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            this.mLastEvent = obtain;
            this.mCache.add(obtain);
        }
    }

    public boolean hasConsumer() {
        return this.mConsumer != null;
    }

    public void setConsumer(Consumer consumer) {
        if (consumer == null) {
            return;
        }
        this.mConsumer = consumer;
        ArrayList arrayList = this.mCache;
        int size = arrayList == null ? 0 : arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            MotionEvent motionEvent = (MotionEvent) this.mCache.get(i4);
            this.mConsumer.accept(motionEvent);
            motionEvent.recycle();
        }
        this.mCache = null;
        this.mLastEvent = null;
    }
}
