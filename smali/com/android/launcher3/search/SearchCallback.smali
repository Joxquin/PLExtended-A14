.class public interface abstract Lcom/android/launcher3/search/SearchCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearSearchResult()V
.end method

.method public abstract onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/search/SearchCallback;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
