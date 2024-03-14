package io.grpc.internal;

import java.util.ArrayDeque;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ChannelTracer$1 extends ArrayDeque {
    final /* synthetic */ C1029m this$0;
    final /* synthetic */ int val$maxEvents;

    @Override // java.util.ArrayDeque, java.util.AbstractCollection, java.util.Collection, java.util.Deque, java.util.Queue
    public final boolean add(Object obj) {
        X2.L l4 = (X2.L) obj;
        if (size() == this.val$maxEvents) {
            removeFirst();
        }
        this.this$0.getClass();
        return super.add(l4);
    }
}
