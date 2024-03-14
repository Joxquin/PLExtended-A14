.class public final Le2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final a:Lcom/android/launcher3/search/SearchCallback;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/app/search/Query;

.field public final d:Ljava/util/ArrayList;

.field public e:Z

.field public final synthetic f:Le2/h;


# direct methods
.method public constructor <init>(Le2/h;Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .locals 2

    iput-object p1, p0, Le2/g;->f:Le2/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le2/g;->d:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Le2/g;->e:Z

    iput-object p2, p0, Le2/g;->b:Ljava/lang/String;

    iput-object p3, p0, Le2/g;->a:Lcom/android/launcher3/search/SearchCallback;

    new-instance p1, Landroid/app/search/Query;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p3, 0x0

    invoke-direct {p1, p2, v0, v1, p3}, Landroid/app/search/Query;-><init>(Ljava/lang/String;JLandroid/os/Bundle;)V

    iput-object p1, p0, Le2/g;->c:Landroid/app/search/Query;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/g;->e:Z

    iget-object v0, p0, Le2/g;->f:Le2/h;

    iget-object v0, v0, Le2/h;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Le2/g;->a:Lcom/android/launcher3/search/SearchCallback;

    iget-object v1, p0, Le2/g;->b:Ljava/lang/String;

    iget-object p0, p0, Le2/g;->f:Le2/h;

    iget-object p0, p0, Le2/h;->b:Lcom/android/launcher3/popup/PopupDataProvider;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupDataProvider;->getAllWidgets()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Li1/a;

    invoke-direct {v3}, Li1/a;-><init>()V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Li1/b;

    invoke-direct {v3, v1, v2}, Li1/b;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/search/SearchCallback;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, Ljava/util/List;

    iget-boolean v0, p0, Le2/g;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le2/g;->f:Le2/h;

    iget-object v0, v0, Le2/h;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Le2/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Le2/g;->a:Lcom/android/launcher3/search/SearchCallback;

    iget-object v0, p0, Le2/g;->b:Ljava/lang/String;

    iget-object v2, p0, Le2/g;->f:Le2/h;

    iget-object p0, p0, Le2/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Le2/c;

    invoke-direct {v1, v3, v4, v5}, Le2/c;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, v2, Le2/h;->b:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupDataProvider;->getAllWidgets()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Le2/d;

    invoke-direct {v1}, Le2/d;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v8, Le2/e;

    move-object v1, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Le2/e;-><init>(Le2/h;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/ArrayList;)V

    invoke-interface {p0, v8}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0, v7}, Lcom/android/launcher3/search/SearchCallback;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method
