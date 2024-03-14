.class public final synthetic LD/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LD/m;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(LD/m;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD/l;->d:LD/m;

    iput p2, p0, LD/l;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LD/l;->d:LD/m;

    iget p0, p0, LD/l;->e:I

    invoke-virtual {v0, p0}, LD/m;->c(I)V

    return-void
.end method
