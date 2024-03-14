.class public final synthetic LA0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LA0/u;

.field public final synthetic f:LA0/u;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;LA0/u;LA0/u;I)V
    .locals 0

    iput p4, p0, LA0/q;->d:I

    iput-object p1, p0, LA0/q;->g:Ljava/lang/Object;

    iput-object p2, p0, LA0/q;->e:LA0/u;

    iput-object p3, p0, LA0/q;->f:LA0/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LA0/q;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LA0/q;->g:Ljava/lang/Object;

    check-cast v0, LA0/x;

    iget-object v1, p0, LA0/q;->e:LA0/u;

    iget-object p0, p0, LA0/q;->f:LA0/u;

    iget-object v2, v0, LA0/x;->d:LA0/u;

    iput-object v2, p0, LA0/u;->f:LA0/u;

    iput-object v1, v0, LA0/x;->d:LA0/u;

    return-void

    :goto_0
    iget-object v0, p0, LA0/q;->g:Ljava/lang/Object;

    check-cast v0, LA0/w;

    iget-object v1, p0, LA0/q;->e:LA0/u;

    iget-object p0, p0, LA0/q;->f:LA0/u;

    iget-object v0, v0, LA0/w;->m:LA0/x;

    iget-object v2, v0, LA0/x;->d:LA0/u;

    iput-object v2, p0, LA0/u;->f:LA0/u;

    iput-object v1, v0, LA0/x;->d:LA0/u;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
