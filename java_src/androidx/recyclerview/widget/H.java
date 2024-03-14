package androidx.recyclerview.widget;

import android.util.SparseIntArray;
/* loaded from: classes.dex */
public abstract class H {
    final SparseIntArray mSpanIndexCache = new SparseIntArray();
    final SparseIntArray mSpanGroupIndexCache = new SparseIntArray();
    private boolean mCacheSpanIndices = false;

    public final int getCachedSpanIndex(int i4, int i5) {
        if (this.mCacheSpanIndices) {
            SparseIntArray sparseIntArray = this.mSpanIndexCache;
            int i6 = sparseIntArray.get(i4, -1);
            if (i6 != -1) {
                return i6;
            }
            int spanIndex = getSpanIndex(i4, i5);
            sparseIntArray.put(i4, spanIndex);
            return spanIndex;
        }
        return getSpanIndex(i4, i5);
    }

    public final int getSpanGroupIndex(int i4, int i5) {
        int spanSize = getSpanSize(i4);
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < i4; i8++) {
            int spanSize2 = getSpanSize(i8);
            i6 += spanSize2;
            if (i6 == i5) {
                i7++;
                i6 = 0;
            } else if (i6 > i5) {
                i7++;
                i6 = spanSize2;
            }
        }
        return i6 + spanSize > i5 ? i7 + 1 : i7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x004e, code lost:
        if (r2 > r10) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x004c -> B:28:0x0051). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x004e -> B:20:0x003f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x004e -> B:28:0x0051). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getSpanIndex(int r9, int r10) {
        /*
            r8 = this;
            int r0 = r8.getSpanSize(r9)
            r1 = 0
            if (r0 != r10) goto L8
            return r1
        L8:
            boolean r2 = r8.mCacheSpanIndices
            if (r2 == 0) goto L41
            android.util.SparseIntArray r2 = r8.mSpanIndexCache
            int r3 = r2.size()
            r4 = -1
            int r3 = r3 + r4
            r5 = r1
        L15:
            if (r5 > r3) goto L27
            int r6 = r5 + r3
            int r6 = r6 >>> 1
            int r7 = r2.keyAt(r6)
            if (r7 >= r9) goto L24
            int r5 = r6 + 1
            goto L15
        L24:
            int r3 = r6 + (-1)
            goto L15
        L27:
            int r5 = r5 + r4
            if (r5 < 0) goto L34
            int r3 = r2.size()
            if (r5 >= r3) goto L34
            int r4 = r2.keyAt(r5)
        L34:
            if (r4 < 0) goto L41
            int r2 = r2.get(r4)
            int r3 = r8.getSpanSize(r4)
            int r3 = r3 + r2
        L3f:
            r2 = r3
            goto L51
        L41:
            r2 = r1
            r4 = r2
        L43:
            if (r4 >= r9) goto L54
            int r3 = r8.getSpanSize(r4)
            int r2 = r2 + r3
            if (r2 != r10) goto L4e
            r2 = r1
            goto L51
        L4e:
            if (r2 <= r10) goto L51
            goto L3f
        L51:
            int r4 = r4 + 1
            goto L43
        L54:
            int r0 = r0 + r2
            if (r0 > r10) goto L58
            return r2
        L58:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.H.getSpanIndex(int, int):int");
    }

    public abstract int getSpanSize(int i4);

    public final void invalidateSpanIndexCache() {
        this.mSpanIndexCache.clear();
    }

    public final void setSpanIndexCacheEnabled() {
        this.mCacheSpanIndices = true;
    }
}
