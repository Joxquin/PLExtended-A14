.class public final synthetic Lcom/android/quickstep/util/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/SplitToWorkspaceController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitToWorkspaceController$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/N;->a:Lcom/android/quickstep/util/SplitToWorkspaceController$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/N;->a:Lcom/android/quickstep/util/SplitToWorkspaceController$1;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/quickstep/util/SplitToWorkspaceController$1;->a(Lcom/android/quickstep/util/SplitToWorkspaceController$1;Ljava/lang/Boolean;)V

    return-void
.end method
