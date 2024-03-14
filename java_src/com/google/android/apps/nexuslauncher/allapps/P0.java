package com.google.android.apps.nexuslauncher.allapps;

import android.app.appsearch.AppSearchBatchResult;
import android.app.appsearch.BatchResultCallback;
import android.app.appsearch.GenericDocument;
import com.google.protobuf.InvalidProtocolBufferException;
import f2.C0858A;
import java.util.NoSuchElementException;
import java.util.concurrent.CompletableFuture;
/* loaded from: classes.dex */
public final class P0 implements BatchResultCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ byte[][] f6672a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ CompletableFuture f6673b;

    public P0(byte[][] bArr, CompletableFuture completableFuture) {
        this.f6672a = bArr;
        this.f6673b = completableFuture;
    }

    @Override // android.app.appsearch.BatchResultCallback
    public final void onResult(AppSearchBatchResult appSearchBatchResult) {
        try {
            GenericDocument genericDocument = (GenericDocument) appSearchBatchResult.getSuccesses().values().stream().findFirst().get();
            C0858A g4 = C0858A.g(genericDocument.getPropertyBytes("zeroStateGetSuggestionsResponseBytes"));
            this.f6672a[0] = genericDocument.getPropertyBytes("zeroStateInternalBytes");
            this.f6673b.complete(g4);
        } catch (InvalidProtocolBufferException | NullPointerException | NoSuchElementException e4) {
            this.f6673b.completeExceptionally(e4);
        } catch (Exception e5) {
            this.f6673b.completeExceptionally(e5);
        }
    }

    @Override // android.app.appsearch.BatchResultCallback
    public final void onSystemError(Throwable th) {
        this.f6673b.completeExceptionally(th);
    }
}
