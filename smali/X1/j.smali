.class public final synthetic LX1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:LX1/u;

.field public final synthetic b:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(LX1/u;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/j;->a:LX1/u;

    iput-object p2, p0, LX1/j;->b:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LX1/j;->a:LX1/u;

    iget-object p0, p0, LX1/j;->b:Landroid/os/UserHandle;

    invoke-static {v0, p0}, LX1/u;->e(LX1/u;Landroid/os/UserHandle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
