.class final synthetic Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$N3tHvURbtaZHsuaPi8AL-pg68og;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$N3tHvURbtaZHsuaPi8AL-pg68og;->f$0:I

    iput-object p2, p0, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$N3tHvURbtaZHsuaPi8AL-pg68og;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final validatePublicKeyParameter([[B)V
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$N3tHvURbtaZHsuaPi8AL-pg68og;->f$0:I

    iget-object v1, p0, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$N3tHvURbtaZHsuaPi8AL-pg68og;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/jcraft/jsch/SignatureWrapper;->lambda$8(ILjava/lang/String;[[B)V

    return-void
.end method
