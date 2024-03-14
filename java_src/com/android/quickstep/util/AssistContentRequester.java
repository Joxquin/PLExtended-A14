package com.android.quickstep.util;

import android.app.ActivityTaskManager;
import android.app.IActivityTaskManager;
import android.app.IAssistDataReceiver;
import android.app.assist.AssistContent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.android.launcher3.util.Executors;
import com.android.quickstep.util.AssistContentRequester;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public class AssistContentRequester {
    private static final String ASSIST_KEY_CONTENT = "content";
    private static final String TAG = "AssistContentRequester";
    private final String mAttributionTag;
    private final String mPackageName;
    private final Map mPendingCallbacks = Collections.synchronizedMap(new WeakHashMap());
    private final IActivityTaskManager mActivityTaskManager = ActivityTaskManager.getService();
    private final Executor mCallbackExecutor = Executors.MAIN_EXECUTOR;
    private final Executor mSystemInteractionExecutor = Executors.UI_HELPER_EXECUTOR;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class AssistDataReceiver extends IAssistDataReceiver.Stub {
        private final Object mCallbackKey;
        private final WeakReference mParentRef;

        public AssistDataReceiver(Callback callback, AssistContentRequester assistContentRequester) {
            Object obj = new Object();
            this.mCallbackKey = obj;
            assistContentRequester.mPendingCallbacks.put(obj, callback);
            this.mParentRef = new WeakReference(assistContentRequester);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.android.quickstep.util.g] */
        public void onHandleAssistData(Bundle bundle) {
            if (bundle == null) {
                return;
            }
            final AssistContent assistContent = (AssistContent) bundle.getParcelable(AssistContentRequester.ASSIST_KEY_CONTENT);
            if (assistContent == null) {
                Log.e(AssistContentRequester.TAG, "Received AssistData, but no AssistContent found");
                return;
            }
            AssistContentRequester assistContentRequester = (AssistContentRequester) this.mParentRef.get();
            if (assistContentRequester == null) {
                Log.d(AssistContentRequester.TAG, "Callback received after Requester was collected");
                return;
            }
            final Callback callback = (Callback) assistContentRequester.mPendingCallbacks.get(this.mCallbackKey);
            if (callback != null) {
                assistContentRequester.executeOnMainExecutor(new Runnable() { // from class: com.android.quickstep.util.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        AssistContentRequester.Callback.this.onAssistContentAvailable(assistContent);
                    }
                });
            } else {
                Log.d(AssistContentRequester.TAG, "Callback received after calling UI was disposed of");
            }
        }

        public void onHandleAssistScreenshot(Bitmap bitmap) {
        }
    }

    /* loaded from: classes.dex */
    public interface Callback {
        void onAssistContentAvailable(AssistContent assistContent);
    }

    public AssistContentRequester(Context context) {
        this.mAttributionTag = context.getAttributionTag();
        this.mPackageName = context.getApplicationContext().getPackageName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executeOnMainExecutor(Runnable runnable) {
        this.mCallbackExecutor.execute(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestAssistContent$0(Callback callback, int i4) {
        try {
            this.mActivityTaskManager.requestAssistDataForTask(new AssistDataReceiver(callback, this), i4, this.mPackageName, this.mAttributionTag);
        } catch (RemoteException e4) {
            Log.e(TAG, "Requesting assist content failed for task: " + i4, e4);
        }
    }

    public void requestAssistContent(final int i4, final Callback callback) {
        this.mSystemInteractionExecutor.execute(new Runnable() { // from class: com.android.quickstep.util.f
            @Override // java.lang.Runnable
            public final void run() {
                AssistContentRequester.this.lambda$requestAssistContent$0(callback, i4);
            }
        });
    }
}
