package androidx.recyclerview.widget;

import android.util.Log;
import android.view.View;
import androidx.core.view.C0186x;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public abstract class E0 {
    private static final List FULLUPDATE_PAYLOADS = Collections.emptyList();
    public final View itemView;
    Z mBindingAdapter;
    int mFlags;
    WeakReference mNestedRecyclerView;
    RecyclerView mOwnerRecyclerView;
    int mPosition = -1;
    int mOldPosition = -1;
    long mItemId = -1;
    int mItemViewType = -1;
    int mPreLayoutPosition = -1;
    E0 mShadowedHolder = null;
    E0 mShadowingHolder = null;
    List mPayloads = null;
    List mUnmodifiedPayloads = null;
    private int mIsRecyclableCount = 0;
    C0295t0 mScrapContainer = null;
    boolean mInChangeScrap = false;
    private int mWasImportantForAccessibilityBeforeHidden = 0;
    int mPendingAccessibilityState = -1;

    public E0(View view) {
        if (view == null) {
            throw new IllegalArgumentException("itemView may not be null");
        }
        this.itemView = view;
    }

    public final void addChangePayload(Object obj) {
        if (obj == null) {
            addFlags(1024);
        } else if ((1024 & this.mFlags) == 0) {
            if (this.mPayloads == null) {
                ArrayList arrayList = new ArrayList();
                this.mPayloads = arrayList;
                this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
            }
            ((ArrayList) this.mPayloads).add(obj);
        }
    }

    public final void addFlags(int i4) {
        this.mFlags = i4 | this.mFlags;
    }

    public final Z getBindingAdapter() {
        return this.mBindingAdapter;
    }

    public final int getBindingAdapterPosition() {
        RecyclerView recyclerView;
        Z adapter;
        int adapterPositionInRecyclerView;
        if (this.mBindingAdapter == null || (recyclerView = this.mOwnerRecyclerView) == null || (adapter = recyclerView.getAdapter()) == null || (adapterPositionInRecyclerView = this.mOwnerRecyclerView.getAdapterPositionInRecyclerView(this)) == -1 || this.mBindingAdapter != adapter) {
            return -1;
        }
        return adapterPositionInRecyclerView;
    }

    public final int getItemViewType() {
        return this.mItemViewType;
    }

    public final int getLayoutPosition() {
        int i4 = this.mPreLayoutPosition;
        return i4 == -1 ? this.mPosition : i4;
    }

    public final List getUnmodifiedPayloads() {
        List list;
        return ((this.mFlags & 1024) != 0 || (list = this.mPayloads) == null || ((ArrayList) list).size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
    }

    public final boolean isAttachedToTransitionOverlay() {
        View view = this.itemView;
        return (view.getParent() == null || view.getParent() == this.mOwnerRecyclerView) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isBound() {
        return (this.mFlags & 1) != 0;
    }

    public final boolean isInvalid() {
        return (this.mFlags & 4) != 0;
    }

    public final boolean isRecyclable() {
        if ((this.mFlags & 16) == 0) {
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            if (!C0186x.g(this.itemView)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isRemoved() {
        return (this.mFlags & 8) != 0;
    }

    public final boolean isScrap() {
        return this.mScrapContainer != null;
    }

    public final boolean isTmpDetached() {
        return (this.mFlags & 256) != 0;
    }

    public final void offsetPosition(int i4, boolean z4) {
        if (this.mOldPosition == -1) {
            this.mOldPosition = this.mPosition;
        }
        if (this.mPreLayoutPosition == -1) {
            this.mPreLayoutPosition = this.mPosition;
        }
        if (z4) {
            this.mPreLayoutPosition += i4;
        }
        this.mPosition += i4;
        View view = this.itemView;
        if (view.getLayoutParams() != null) {
            ((C0282m0) view.getLayoutParams()).f3985c = true;
        }
    }

    public final void onEnteredHiddenState(RecyclerView recyclerView) {
        int i4 = this.mPendingAccessibilityState;
        if (i4 != -1) {
            this.mWasImportantForAccessibilityBeforeHidden = i4;
        } else {
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            this.mWasImportantForAccessibilityBeforeHidden = C0186x.b(this.itemView);
        }
        recyclerView.setChildImportantForAccessibilityInternal(this, 4);
    }

    public final void onLeftHiddenState(RecyclerView recyclerView) {
        recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
        this.mWasImportantForAccessibilityBeforeHidden = 0;
    }

    public final void resetInternal() {
        if (RecyclerView.sDebugAssertionsEnabled && isTmpDetached()) {
            throw new IllegalStateException("Attempting to reset temp-detached ViewHolder: " + this + ". ViewHolders should be fully detached before resetting.");
        }
        this.mFlags = 0;
        this.mPosition = -1;
        this.mOldPosition = -1;
        this.mItemId = -1L;
        this.mPreLayoutPosition = -1;
        this.mIsRecyclableCount = 0;
        this.mShadowedHolder = null;
        this.mShadowingHolder = null;
        List list = this.mPayloads;
        if (list != null) {
            ((ArrayList) list).clear();
        }
        this.mFlags &= -1025;
        this.mWasImportantForAccessibilityBeforeHidden = 0;
        this.mPendingAccessibilityState = -1;
        RecyclerView.clearNestedRecyclerViewIfNotNested(this);
    }

    public final void setIsRecyclable(boolean z4) {
        int i4 = this.mIsRecyclableCount;
        int i5 = z4 ? i4 - 1 : i4 + 1;
        this.mIsRecyclableCount = i5;
        if (i5 < 0) {
            this.mIsRecyclableCount = 0;
            if (RecyclerView.sDebugAssertionsEnabled) {
                throw new RuntimeException("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            }
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
        } else if (!z4 && i5 == 1) {
            this.mFlags |= 16;
        } else if (z4 && i5 == 0) {
            this.mFlags &= -17;
        }
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "setIsRecyclable val:" + z4 + ":" + this);
        }
    }

    public final boolean shouldIgnore() {
        return (this.mFlags & 128) != 0;
    }

    public final String toString() {
        StringBuilder a4 = t.j.a(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
        a4.append(Integer.toHexString(hashCode()));
        a4.append(" position=");
        a4.append(this.mPosition);
        a4.append(" id=");
        a4.append(this.mItemId);
        a4.append(", oldPos=");
        a4.append(this.mOldPosition);
        a4.append(", pLpos:");
        a4.append(this.mPreLayoutPosition);
        StringBuilder sb = new StringBuilder(a4.toString());
        if (isScrap()) {
            sb.append(" scrap ");
            sb.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
        }
        if (isInvalid()) {
            sb.append(" invalid");
        }
        if (!isBound()) {
            sb.append(" unbound");
        }
        boolean z4 = true;
        if ((this.mFlags & 2) != 0) {
            sb.append(" update");
        }
        if (isRemoved()) {
            sb.append(" removed");
        }
        if (shouldIgnore()) {
            sb.append(" ignored");
        }
        if (isTmpDetached()) {
            sb.append(" tmpDetached");
        }
        if (!isRecyclable()) {
            sb.append(" not recyclable(" + this.mIsRecyclableCount + ")");
        }
        if ((this.mFlags & 512) == 0 && !isInvalid()) {
            z4 = false;
        }
        if (z4) {
            sb.append(" undefined adapter position");
        }
        if (this.itemView.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }

    public final boolean wasReturnedFromScrap() {
        return (this.mFlags & 32) != 0;
    }
}
