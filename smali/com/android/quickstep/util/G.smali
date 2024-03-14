.class public final synthetic Lcom/android/quickstep/util/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/SplitSelectStateController;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController;Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/G;->a:Lcom/android/quickstep/util/SplitSelectStateController;

    iput-object p2, p0, Lcom/android/quickstep/util/G;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/quickstep/util/G;->c:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/G;->a:Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v1, p0, Lcom/android/quickstep/util/G;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/android/quickstep/util/G;->c:Ljava/util/function/Consumer;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/util/SplitSelectStateController;->a(Lcom/android/quickstep/util/SplitSelectStateController;Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void
.end method
