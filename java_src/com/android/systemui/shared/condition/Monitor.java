package com.android.systemui.shared.condition;

import android.util.ArraySet;
import android.util.Log;
import com.android.systemui.shared.condition.Condition;
import com.android.systemui.shared.condition.Monitor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import p1.InterfaceC1348a;
/* loaded from: classes.dex */
public class Monitor {
    private final Condition.Callback mConditionCallback;
    private final HashMap mConditions;
    private final Executor mExecutor;
    private final InterfaceC1348a mLogBuffer;
    private final Set mPreconditions;
    private final HashMap mSubscriptions;
    private final String mTag;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.systemui.shared.condition.Monitor$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Condition.Callback {
        public AnonymousClass1() {
            Monitor.this = r1;
        }

        public /* synthetic */ void lambda$onConditionChanged$0(Condition condition) {
            Monitor.this.updateConditionMetState(condition);
        }

        @Override // com.android.systemui.shared.condition.Condition.Callback
        public void onConditionChanged(Condition condition) {
            Monitor.this.mExecutor.execute(new e(0, this, condition));
        }
    }

    /* loaded from: classes.dex */
    public interface Callback {
        default ArrayList getConditions() {
            return new ArrayList();
        }

        default void onActiveChanged(boolean z4) {
        }

        void onConditionsChanged(boolean z4);
    }

    /* loaded from: classes.dex */
    public class Subscription {
        private final Callback mCallback;
        private final Set mConditions;
        private final Subscription mNestedSubscription;

        /* loaded from: classes.dex */
        public class Builder {
            private final Callback mCallback;
            private final ArraySet mConditions;
            private final Subscription mNestedSubscription;

            public Builder(Callback callback) {
                this(null, callback);
            }

            public Builder addCondition(Condition condition) {
                this.mConditions.add(condition);
                return this;
            }

            public Builder addConditions(Set set) {
                if (set == null) {
                    return this;
                }
                this.mConditions.addAll(set);
                return this;
            }

            public Subscription build() {
                return new Subscription(this.mConditions, this.mCallback, this.mNestedSubscription, 0);
            }

            public Builder(Subscription subscription) {
                this(subscription, null);
            }

            private Builder(Subscription subscription, Callback callback) {
                this.mNestedSubscription = subscription;
                this.mCallback = callback;
                this.mConditions = new ArraySet();
            }
        }

        /* loaded from: classes.dex */
        public class Token {
        }

        public /* synthetic */ Subscription(Set set, Callback callback, Subscription subscription, int i4) {
            this(set, callback, subscription);
        }

        public Callback getCallback() {
            return this.mCallback;
        }

        public Set getConditions() {
            return this.mConditions;
        }

        public Subscription getNestedSubscription() {
            return this.mNestedSubscription;
        }

        private Subscription(Set set, Callback callback, Subscription subscription) {
            this.mConditions = Collections.unmodifiableSet(set);
            this.mCallback = callback;
            this.mNestedSubscription = subscription;
        }
    }

    /* loaded from: classes.dex */
    public class SubscriptionState {
        private boolean mActive;
        private Boolean mAllConditionsMet;
        private Subscription.Token mNestedSubscriptionToken;
        private final Subscription mSubscription;

        public SubscriptionState(Subscription subscription) {
            this.mSubscription = subscription;
        }

        private void removeNestedSubscription(Monitor monitor) {
            Subscription.Token token = this.mNestedSubscriptionToken;
            if (token == null) {
                return;
            }
            monitor.removeSubscription(token);
            this.mNestedSubscriptionToken = null;
        }

        private void setActive(boolean z4) {
            if (this.mActive == z4) {
                return;
            }
            this.mActive = z4;
            Callback callback = this.mSubscription.getCallback();
            if (callback == null) {
                return;
            }
            callback.onActiveChanged(z4);
        }

        public Set getConditions() {
            return this.mSubscription.mConditions;
        }

        public void onAdded() {
            setActive(true);
        }

        public void onRemoved(Monitor monitor) {
            setActive(false);
            removeNestedSubscription(monitor);
        }

        public void update(Monitor monitor) {
            boolean z4 = false;
            Boolean evaluate = Evaluator.INSTANCE.evaluate(this.mSubscription.mConditions, 0);
            z4 = (evaluate == null || evaluate.booleanValue()) ? true : true;
            Boolean bool = this.mAllConditionsMet;
            if (bool == null || z4 != bool.booleanValue()) {
                this.mAllConditionsMet = Boolean.valueOf(z4);
                Subscription nestedSubscription = this.mSubscription.getNestedSubscription();
                if (nestedSubscription == null) {
                    this.mSubscription.getCallback().onConditionsChanged(this.mAllConditionsMet.booleanValue());
                } else if (this.mAllConditionsMet.booleanValue() && this.mNestedSubscriptionToken == null) {
                    this.mNestedSubscriptionToken = monitor.addSubscription(nestedSubscription, null);
                } else if (this.mAllConditionsMet.booleanValue() || this.mNestedSubscriptionToken == null) {
                } else {
                    removeNestedSubscription(monitor);
                }
            }
        }
    }

    public Monitor(Executor executor) {
        this(executor, Collections.emptySet());
    }

    public /* synthetic */ void lambda$addSubscription$1(Subscription.Token token, Condition condition) {
        if (!this.mConditions.containsKey(condition)) {
            this.mConditions.put(condition, new ArraySet());
            condition.addCallback(this.mConditionCallback);
        }
        ((ArraySet) this.mConditions.get(condition)).add(token);
    }

    public /* synthetic */ void lambda$addSubscription$2(Subscription.Token token, SubscriptionState subscriptionState, Subscription subscription) {
        if (shouldLog()) {
            Log.d(this.mTag, "adding subscription");
        }
        this.mSubscriptions.put(token, subscriptionState);
        subscription.getConditions().forEach(new b(this, token, 1));
        subscriptionState.onAdded();
        subscriptionState.update(this);
    }

    public /* synthetic */ void lambda$removeSubscription$3(Subscription.Token token, Condition condition) {
        if (!this.mConditions.containsKey(condition)) {
            String str = this.mTag;
            Log.e(str, "condition not present:" + condition);
            return;
        }
        Set set = (Set) this.mConditions.get(condition);
        set.remove(token);
        if (set.isEmpty()) {
            condition.removeCallback(this.mConditionCallback);
            this.mConditions.remove(condition);
        }
    }

    public /* synthetic */ void lambda$removeSubscription$4(Subscription.Token token) {
        if (shouldLog()) {
            Log.d(this.mTag, "removing subscription");
        }
        if (this.mSubscriptions.containsKey(token)) {
            SubscriptionState subscriptionState = (SubscriptionState) this.mSubscriptions.remove(token);
            subscriptionState.getConditions().forEach(new b(this, token, 0));
            subscriptionState.onRemoved(this);
            return;
        }
        String str = this.mTag;
        Log.e(str, "subscription not present:" + token);
    }

    public /* synthetic */ void lambda$updateConditionMetState$0(Subscription.Token token) {
        ((SubscriptionState) this.mSubscriptions.get(token)).update(this);
    }

    private boolean shouldLog() {
        return Log.isLoggable(this.mTag, 3);
    }

    public void updateConditionMetState(Condition condition) {
        ArraySet arraySet = (ArraySet) this.mConditions.get(condition);
        if (arraySet == null) {
            return;
        }
        arraySet.stream().forEach(new Consumer() { // from class: com.android.systemui.shared.condition.d
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Monitor.this.lambda$updateConditionMetState$0((Monitor.Subscription.Token) obj);
            }
        });
    }

    public Subscription.Token addSubscription(Subscription subscription) {
        return addSubscription(subscription, this.mPreconditions);
    }

    public void removeSubscription(Subscription.Token token) {
        this.mExecutor.execute(new e(1, this, token));
    }

    public Monitor(Executor executor, Set set) {
        this(executor, set, null);
    }

    public Subscription.Token addSubscription(final Subscription subscription, Set set) {
        if (set != null) {
            subscription = new Subscription.Builder(subscription).addConditions(set).build();
        }
        final Subscription.Token token = new Subscription.Token();
        final SubscriptionState subscriptionState = new SubscriptionState(subscription);
        this.mExecutor.execute(new Runnable() { // from class: com.android.systemui.shared.condition.c
            @Override // java.lang.Runnable
            public final void run() {
                Monitor.this.lambda$addSubscription$2(token, subscriptionState, subscription);
            }
        });
        return token;
    }

    public Monitor(Executor executor, Set set, InterfaceC1348a interfaceC1348a) {
        this.mTag = getClass().getSimpleName();
        this.mConditions = new HashMap();
        this.mSubscriptions = new HashMap();
        this.mConditionCallback = new AnonymousClass1();
        this.mExecutor = executor;
        this.mPreconditions = set;
    }
}
