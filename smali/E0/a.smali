.class public final synthetic LE0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/search/SearchCallback;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE0/a;->d:Lcom/android/launcher3/search/SearchCallback;

    iput-object p2, p0, LE0/a;->e:Ljava/lang/String;

    iput-object p3, p0, LE0/a;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LE0/a;->d:Lcom/android/launcher3/search/SearchCallback;

    iget-object v1, p0, LE0/a;->e:Ljava/lang/String;

    iget-object p0, p0, LE0/a;->f:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p0}, Lcom/android/launcher3/search/SearchCallback;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
