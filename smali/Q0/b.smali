.class public final synthetic LQ0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ0/b;->d:Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LQ0/b;->d:Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    invoke-static {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->a(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)V

    return-void
.end method
